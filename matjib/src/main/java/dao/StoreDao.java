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
	Integer getStoreNo(Integer user_no); 
	List<ImageFile> getPhoto(Integer store_no);	
	List<Store> findKorean();
	List<Store> findJapanese();
	List<Store> findChinese();
	List<Store> findPizzaChicken();
	List<Store> findSnack();
	List<Store> findCafe();
	Integer get_order_count_male(Integer store_no);
    Integer get_order_count_female(Integer store_no);
    void update_male_count(Store store);
    void update_female_count(Store store);
    Integer get_old_count_male(Integer store_no);
    Integer get_young_count_male(Integer store_no);
    void update_old_count(Store store);
    void update_young_count(Store store);
    void deleteStore(Integer store_no);
    void deletePhoto(Integer store_no);
    void deleteReviwe(Integer store_no);
    // 랭킹 100
    List<Store> getStoreBy2030();
    List<Store> getStoreByUncle();
    List<Store> getStoreByFemale();
    List<Store> getStoreByMale();
    List<Store> getStoreByReview();
    List<Store> getStoreByStar();
    Integer getReviewCount(Integer store_no);
    void updateReviewCount(Store store);
    Integer getStarTotal(Integer store_no);
    void updateStarAvg(Store store);
    
    void updateAdmin(Store store_no);
    List<Store> getPullStore();
    List<Store> getAdminList();
}
