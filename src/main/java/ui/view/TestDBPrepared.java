package ui.view;

import domain.db.Secret;
import domain.model.Country;

import java.sql.*;
import java.util.Properties;

public class TestDBPrepared {
	public static void main(String[] args) throws SQLException {
		Properties properties = new Properties();
		String url = "jdbc:postgresql://databanken.ucll.be:62021/webontwerp";
		properties.setProperty("user", "");
		properties.setProperty("password", "");
		Secret.setPass(properties);	// implements line 17 and 18
		properties.setProperty("ssl", "true");
		properties.setProperty("sslfactory", "org.postgresql.ssl.NonValidatingFactory");
		properties.setProperty("sslmode","prefer");
		properties.setProperty("allowMultiQueries","true");
		properties.setProperty("prepareThreshold","0");

		String setSearchPath = "SET search_path = web3;";
		String sql = "SELECT * from country";

		Connection connection = DriverManager.getConnection(url,properties);
		connection.setAutoCommit(false);
		PreparedStatement statementSearchPath = connection.prepareStatement(setSearchPath);
		PreparedStatement statementsql = connection.prepareStatement(sql);
		statementSearchPath.execute();
		statementsql.executeQuery();
		connection.commit();
		ResultSet result = statementsql.getResultSet();

		while(result.next()){
			String name = result.getString("name");
			String capital = result.getString("capital");
			int numberOfVotes = result.getInt("votes");
			int numberOfInhabitants = result.getInt("inhabitants");
			try {	// validation of data stored in database
				Country country = new Country(name, numberOfInhabitants, capital, numberOfVotes);
				System.out.println(country.toString());
			}
			catch (IllegalArgumentException e) {
				System.out.println(e.getMessage());
			}
		}

		statementsql.close();
		statementSearchPath.close();
		connection.close();
	}
}
