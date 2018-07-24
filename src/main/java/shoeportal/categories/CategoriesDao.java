package shoeportal.categories;

import java.util.List;
import shoeportal.categories.Categories;


public interface CategoriesDao 
{
	void insert(Categories c);
	void update(Categories c);
	void delete(long id);
	
	Categories getCategories(long id);
	
	List<Categories> getCategories();
	
	

}
