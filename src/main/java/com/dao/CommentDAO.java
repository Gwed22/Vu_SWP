/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.db.DBConnection;
import com.models.Comment;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Tran Ba Nam
 */
public class CommentDAO {

    private Connection conn = null; // Connect with SQL Server
    private PreparedStatement ps = null; // Throw query statement to SQL Server
    private ResultSet rs = null; // Receive the respond result of SQL Server

    public CommentDAO() {
        conn = DBConnection.getConnection();
    }

    public int AddComment(int aid, int pid, String context) {
        int count = 0;
        String query = "insert Comment values(?,?,?)";
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, aid);
            ps.setInt(2, pid);
            ps.setString(3, context);
            count = ps.executeUpdate();
        } catch (Exception e) {
        }
        return count;

    }

    public List<Comment> getAllCommentByID(int pid) {
        List<Comment> list = new ArrayList<>();
        String query = "select a.full_name, c.context from Comment c join Account a \n"
                + "on c.accID = a.account_id where c.pid = ?";
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, pid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Comment(rs.getString(1), rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }
}
