/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.implement;

import constant.CommonConst;
import dal.GenericDAO;
import entity.Product;
import java.util.LinkedHashMap;
import java.util.List;

/**
 *
 * @author PC
 */
public class ProductDAO extends GenericDAO<Product> {

    @Override
    public List<Product> findAll() {
        return queryGenericDAO(Product.class);

    }

    @Override
    public int insert(Product t) {
        return insertGenericDAO(t);
    }

    public static void main(String[] args) {
        for (Product product : new ProductDAO().findByName("EDP", 1)) {
            System.out.println(product.toString());
        }
    }

    public Product findbyId(Product product) {
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[image]\n"
                + "      ,[quantity]\n"
                + "      ,[price]\n"
                + "      ,[description]\n"
                + "      ,[categoryId]\n"
                + "  FROM [dbo].[Product]\n"
                + "\n"
                + "\n"
                + "\n"
                + "where id = ?";

        parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", product.getId());

        List<Product> list = queryGenericDAO(Product.class, sql, parameterMap);
        // neu list empty -> khong co san pham -> tra ve null  
        // nguoc lai list ma khong empty -> co san pham -> nam o vi tri dau tien -> lay ve vi trri so 0
        return list.isEmpty() ? null : list.get(0);

    }

    public List<Product> findByCategory(String categoryId, int page) {
        String sql = "select * from [Product]\n"
                + "                where categoryId = ?\n"
                + "		Order by id\n"
                + "                OFFSET ? rows\n"
                + "               fetch next ? rows only";

        parameterMap = new LinkedHashMap<>();
        parameterMap.put("categoryId", categoryId);
        parameterMap.put("offset", (page - 1) * CommonConst.RECORD_PER_PAGE);
        parameterMap.put("fetch", CommonConst.RECORD_PER_PAGE);

        return queryGenericDAO(Product.class, sql, parameterMap);

    }

    public List<Product> findByName(String keyword, int page) {
        String sql = "select * from [Product]\n"
                + "where [name] like ?";

        parameterMap = new LinkedHashMap<>();
        parameterMap.put("name", "%" + keyword + "%");

        return queryGenericDAO(Product.class, sql, parameterMap);
    }

    public int findTotalRecordByCategory(String categoryId) {
        String sql = "select count(*) from [Product]\n"
                + "where categoryId = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("categoryId", categoryId);

        return findTotalRecordGenericDAO(Product.class, sql, parameterMap);
    }

    public int findTotalRecordByName(String keyword) {
        String sql = "SELECT count(*)\n"
                + "  FROM Product\n"
                + "  where [name] like ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("name", "%" + keyword + "%");
        return findTotalRecordGenericDAO(Product.class, sql, parameterMap);
    }

    public int findTotalRecord() {
        String sql = "SELECT count(*)\n"
                + "  FROM Product\n";
        parameterMap = new LinkedHashMap<>();
        return findTotalRecordGenericDAO(Product.class, sql, parameterMap);
    }

    public List<Product> findByPage(int page) {
        String sql = "SELECT *\n"
                + "  FROM Product\n"
                + "  ORDER BY id\n"
                + "  OFFSET ? ROWS\n" //( PAGE - 1 ) * Y
                + "  FETCH NEXT ? ROWS ONLY"; // NUMBER_RECORD_PER_PAGE
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("offset", (page - 1) * CommonConst.RECORD_PER_PAGE);
        parameterMap.put("fetch", CommonConst.RECORD_PER_PAGE);
        return queryGenericDAO(Product.class, sql, parameterMap);

    }

    public void deleteById(int id) {
        String sql = "DELETE FROM [dbo].[Product]\n"
                + "      WHERE [id] = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", id);
        deleteGenericDAO(sql, parameterMap);
    }

    public void update(Product product) {
        String sql = "UPDATE [dbo].[Product]\n"
                + "   SET [name] = ?\n"
                + "      ,[image] = ?\n"
                + "      ,[quantity] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[description] = ?\n"
                + "      ,[categoryId] = ?\n"
                + " WHERE id = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("name", product.getName());
        parameterMap.put("image", product.getImage());
        parameterMap.put("quantity", product.getQuantity());
        parameterMap.put("price", product.getPrice());
        parameterMap.put("description", product.getDescription());
        parameterMap.put("categoryId", product.getCategoryId());
        parameterMap.put("id", product.getId());
        updateGenericDAO(sql, parameterMap);
    }

}
