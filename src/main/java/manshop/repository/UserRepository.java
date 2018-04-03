package manshop.repository;

import manshop.entity.UserEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface UserRepository extends CrudRepository<UserEntity, Integer> {
    UserEntity findByEmail(String email);
    UserEntity findById(int id);
    @Query(value="SELECT u.* FROM user u WHERE u.isDel != 'false' and roleId = 1 ORDER BY u.id desc", nativeQuery = true)
    List<UserEntity> getUsersDESC();

    @Query(value="SELECT u.* FROM user u WHERE u.isDel = 'false' and roleId = 1 ORDER BY u.id desc", nativeQuery = true)
    List<UserEntity> getUsersDisable();
}
