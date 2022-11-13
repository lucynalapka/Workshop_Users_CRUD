package pl.coderslab;

import org.mindrot.jbcrypt.BCrypt;

import java.sql.*;
import java.util.Arrays;


public class UserDao {
    private static final String CREATE_USER_QUERY =
            "INSERT INTO users(name, email, password) VALUES (?, ?, ?)";

    private static final String READ_ID_QUERY =
            "select * from users where id=?";

    private static final String UPDATE_USER_QUERY =
            "UPDATE users SET name = ?, email=?, password=?  WHERE id=?";

    private static final String DELETE_USER_QUERY = "delete from users where id=?";

    private static final String FIND_ALL_USERS_QUERY =
            "SELECT * FROM users";


    public User create(User user) {
        try (Connection conn = DbUtil.getConnection()) {

            PreparedStatement preparedStatement = conn.prepareStatement(CREATE_USER_QUERY, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, hashPassword(user.getPassword()));
            preparedStatement.executeUpdate();
            ResultSet resultSet = preparedStatement.getGeneratedKeys();
            if (resultSet.next()) {
                user.setId(resultSet.getInt(1));
            }
            return user;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }

    public static User read(int id) {
        User user = new User();

        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement preparedStatement = conn.prepareStatement(READ_ID_QUERY);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password"));
                return user;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void update(User user) {


        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement preparedStatement = conn.prepareStatement(UPDATE_USER_QUERY);

            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, hashPassword(user.getPassword()));
            preparedStatement.setInt(4, user.getId());
            preparedStatement.executeUpdate();


        } catch (SQLException e) {
            e.printStackTrace();
        }

    }


    public static void delete(int userId) {
        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement preparedStatement = conn.prepareStatement(DELETE_USER_QUERY);
            preparedStatement.setInt(1, userId);
            preparedStatement.executeUpdate();

        } catch (
                SQLException e) {
            e.printStackTrace();

        }

    }

    public static User[] findAll() {
        User[] users = new User[0];

        try (Connection conn = DbUtil.getConnection()) {
            PreparedStatement preparedStatement = conn.prepareStatement(FIND_ALL_USERS_QUERY);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getInt("id"));
                user.setName(resultSet.getString("name"));
                user.setEmail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password"));
                users = Arrays.copyOf(users, users.length + 1);
                users[users.length - 1] = user;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }
}








