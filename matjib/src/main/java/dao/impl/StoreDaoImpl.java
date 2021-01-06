package dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.StoreDao;
import model.Store;
@Repository
public class StoreDaoImpl implements StoreDao {
	@Autowired
	private SqlSession session;
	public void AddStore(Store store) {
		session.insert("mapper.Storemapper.addStore", store);
		
	}	
	
	
}
