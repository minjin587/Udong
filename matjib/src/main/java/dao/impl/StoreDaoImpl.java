package dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.StoreDao;
import model.ImageFile;
import model.Store;

@Repository
public class StoreDaoImpl implements StoreDao {
	@Autowired
	private SqlSession session;

	public void AddStore(Store store) {
		session.insert("mapper.Storemapper.addStore", store);
	}

	public void AddPhoto(ImageFile imageFile) {
		session.insert("mapper.Filemapper.addPhoto", imageFile);

	}

	public List<Store> findStore() {
		return session.selectList("mapper.Storemapper.findStore");
	}

	public Integer getStoreNo(Integer user_no) {
		return session.selectOne("mapper.Storemapper.getStoreNo", user_no);
	}

	public Integer getMaxStoreNo() {
		return session.selectOne("mapper.Storemapper.getMaxStoreNo");
	}

	public Integer getMaxImageNo() {
		return session.selectOne("mapper.Filemapper.getMaxImageNo");
	}

	public Store getStore(Integer store_no) {
		return session.selectOne("mapper.Storemapper.getStore", store_no);
	}

	public void updateStore_regist(Store store) {
		session.update("mapper.Storemapper.updateStore_regist", store);

	}

	public void updateStore_Image(Integer store_no) {
		session.update("mapper.Storemapper.updateStore_Image", store_no);

	}

	public void deleteImage(Integer store_no) {
		session.delete("mapper.Filemapper.deleteImage", store_no);

	}

	public List<Store> listStore() {
		return session.selectList("mapper.rankingmapper.listStore");
	}

	public List<ImageFile> getPhoto(Integer store_no) {
		return session.selectList("mapper.Storemapper.getPhoto", store_no);
	}

	public List<Store> findKorean() {
		return session.selectList("mapper.Storemapper.findKorean");
	}

	public List<Store> findJapanese() {
		return session.selectList("mapper.Storemapper.findJapanese");

	}

	public List<Store> findChinese() {
		return session.selectList("mapper.Storemapper.findChinese");
	}

	public List<Store> findPizzaChicken() {
		return session.selectList("mapper.Storemapper.findPizza");
	}

	public List<Store> findSnack() {
		return session.selectList("mapper.Storemapper.findSnack");
	}

	public List<Store> findCafe() {
		return session.selectList("mapper.Storemapper.findCafe");
	}

	public Integer get_order_count_male(Integer store_no) {
		return session.selectOne("mapper.Storemapper.get_order_count_male", store_no);
	}

	public Integer get_order_count_female(Integer store_no) {
		return session.selectOne("mapper.Storemapper.get_order_count_female", store_no);
	}

	public void update_male_count(Store store) {
		session.update("mapper.Storemapper.update_male_count", store);
	}

	public void update_female_count(Store store) {
		session.update("mapper.Storemapper.update_female_count", store);
	}

	public Integer get_old_count_male(Integer store_no) {
		return session.selectOne("mapper.Storemapper.get_old_count_male", store_no);
	}

	public void update_old_count(Store store) {
		session.update("mapper.Storemapper.update_old_count", store);
	}

	public void update_young_count(Store store) {
		session.update("mapper.Storemapper.update_young_count", store);
	}

	public Integer get_young_count_male(Integer store_no) {
		return session.selectOne("mapper.Storemapper.get_young_count_male", store_no);
	}

	public void deleteReviwe(Integer store_no) {
		session.delete("mapper.Storemapper.deleteReviwe", store_no);
	}

	public void deleteStore(Integer store_no) {
		session.delete("mapper.Storemapper.deleteStore", store_no);
	}

	public void deletePhoto(Integer store_no) {
		session.delete("mapper.Filemapper.deletePhoto", store_no);
	}

	public List<Store> getStoreBy2030() {
		return session.selectList("mapper.Storemapper.getStoreBy2030");
	}

	public List<Store> getStoreByUncle() {
		return session.selectList("mapper.Storemapper.getStoreByUncle");
	}

	public List<Store> getStoreByFemale() {
		return session.selectList("mapper.Storemapper.getStoreByFemale");
	}

	public List<Store> getStoreByMale() {
		return session.selectList("mapper.Storemapper.getStoreByMale");
	}

	public Integer getReviewCount(Integer store_no) {
		return session.selectOne("mapper.Storemapper.getReviewCount", store_no);
	}

	public void updateReviewCount(Store store) {
		session.update("mapper.Storemapper.updateReviewCount", store);
	}

	public List<Store> getStoreByReview() {
		return session.selectList("mapper.Storemapper.getStoreByReview");
	}

	public Integer getStarTotal(Integer store_no) {
		return session.selectOne("mapper.Storemapper.getStarTotal", store_no);
	}

	public void updateStarAvg(Store store) {
		session.update("mapper.Storemapper.updateStarAvg", store);
	}

	public List<Store> getStoreByStar() {
		return session.selectList("mapper.Storemapper.getStoreByStar");
	}

	public List<Store> getPullStore() {
		return session.selectList("mapper.Storemapper.findStore");
	}
	
    public void updateAdmin(Store store_no) {
        session.update("mapper.Storemapper.updateStar",store_no);            
     }
    public List<Store> getAdminList() {
        return session.selectList("mapper.Storemapper.getAdmin");
     }
}
