package dao;

import model.User;

public interface UploadDao {
	void upload(User user);
	Integer getMaxPhotoNo();
	
}
