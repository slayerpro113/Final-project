package manshop.repository;

import manshop.entity.CategoryEntity;
import org.springframework.data.repository.CrudRepository;

public interface CategoryRepository extends CrudRepository<CategoryEntity, Integer> {
    CategoryEntity findByCategoryName(String name);
}
