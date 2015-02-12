package com.demo.repository.tenant;

import java.io.Serializable;

import javax.persistence.EntityManager;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.data.jpa.repository.support.SimpleJpaRepository;
import org.springframework.util.Assert;

public class TenantAwareRepositoryImpl<T, ID extends Serializable> extends
		SimpleJpaRepository<T, ID> {

	private final EntityManager em;
	private static final Logger log = LogManager
			.getLogger(TenantAwareRepositoryImpl.class);

	public TenantAwareRepositoryImpl(Class<T> domainClass,
			EntityManager entityManager) {
		super(domainClass, entityManager);

		this.em = entityManager;
	}

	@Override
	public T findOne(ID id) {
		Assert.notNull(id, "The given id must not be null!");

		Class<T> domainType = getDomainClass();
		log.debug(String.format("Performing findOne for %s, with id of %d",
				domainType.getName(), id));

		domainType.getDeclaredFields();

		return em.find(domainType, id);
	}
}
