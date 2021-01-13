package dao;

import java.util.List;

import model.ImageFile;
import model.Store;

public interface StoreDao {
	void AddStore(Store store);	
	void AddPhoto(ImageFile imageFile);
	Integer getMaxStoreNo();
	Integer getMaxImageNo();
	Store getStore(Integer store_no);
	void updateStore_regist(Store store);
	void updateStore_Image(Integer store_no);
	void deleteImage(Integer store_no);
	List<Store> findStore();
	/* Integer getStoreNo(String store_no); */
	
	
}
