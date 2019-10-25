package web.mongo;
import java.util.*;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.bson.Document;
import org.bson.types.ObjectId;



import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;

import web.mongo.db.ConnectionManager;

import web.mongo.db.modal.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DbData")
public class DbData extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Class String = null;
       
    
    public DbData() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MongoClient connection = ConnectionManager.getMongo();
		MongoDatabase db = ConnectionManager.getDb("Assesment4");
		MongoCollection<Document> collection = db.getCollection("Users");
		
		
        MongoCursor<Document> cursor = collection.find().iterator();
		
		List<User> dataList = new LinkedList<>();
		
		while (cursor.hasNext()) {
			Document d = (Document) cursor.next();

			User b = new User();
			b.setName(d.getString("name"));
			b.setPhone(d.getInteger("phone"));
	        b.setCity(d.getString("city"));
	        b.setDesc(d.getString("desc"));
	        b.setEmail(d.getString("email"));
	        b.setPostal(d.getInteger("phone", 0));
	        
		}
		request.setAttribute("Userlist", dataList);
		request.getRequestDispatcher("final.jsp").forward(request, response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s[]= (String[])request.getAttribute("Selected");
		
		MongoClient connection = ConnectionManager.getMongo();
		MongoDatabase db = ConnectionManager.getDb("Assesment4");
		MongoCollection<Document> collection = db.getCollection("Users");
		
		
		List<User> dataList = show(collection);
		request.setAttribute("Userlist", dataList);
		
		String phone = request.getParameter("phone");
		int phone1 = Integer.valueOf(phone);
		String postal = request.getParameter("postal");
		int postal1 = Integer.valueOf(postal);
		
		String name = request.getParameter("name");
		String desc = request.getParameter("desc");
		String email = request.getParameter("email");
		String city = request.getParameter("city");
		Document document = new Document("phone",phone1 ).append("name", name)
				.append("email", email)
				.append("postal",postal1).append("desc", desc).append("city", city);
		
		String button = request.getParameter("button");
		
		switch(button) {
		case "Add":
			collection.insertOne(document);
			List<User> dataList2 = show(collection);
			request.setAttribute("Userlist", dataList2);
			break;
			
		case "Delete":
			collection.deleteOne(Filters.eq("phone",phone1));
			List<User> dataList1 = show(collection);
			request.setAttribute("Userlist", dataList1);
			break;
		}
	
		request.getRequestDispatcher("final.jsp").forward(request, response);
}

		
		
		
		
		
		
		
		
	


	 List<User> show(MongoCollection<Document> collection) {
		List<User> dataList = new LinkedList<>();
		MongoCursor<Document> cursor = collection.find().iterator();
		while (cursor.hasNext()) {
			Document d = (Document) cursor.next();

			User b = new User();
			b.setName(d.getString("name"));
			b.setPhone(d.getInteger("phone"));
	        b.setCity(d.getString("city"));
	        b.setDesc(d.getString("desc"));
	        b.setEmail(d.getString("email"));
	        b.setPostal(d.getInteger("phone", 0));
			dataList.add(b);
		}
		return dataList;
		
	
		
	}

}
