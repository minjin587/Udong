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

	public Integer getStoreNo(String store_no) {
		return session.selectOne("mapper.Filemapper.getStoreNo");
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

}
