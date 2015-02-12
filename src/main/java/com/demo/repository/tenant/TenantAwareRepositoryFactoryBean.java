package com.demo.repository.tenant;

import java.io.Serializable;

import javax.persistence.EntityManager;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.support.JpaRepositoryFactory;
import org.springframework.data.jpa.repository.support.JpaRepositoryFactoryBean;
import org.springframework.data.repository.core.RepositoryMetadata;
import org.springframework.data.repository.core.support.RepositoryFactorySupport;

public class TenantAwareRepositoryFactoryBean<R extends JpaRepository<T, I>, T, I extends Serializable>
		extends JpaRepositoryFactoryBean<R, T, I> {
	
	@SuppressWarnings("rawtypes")
	protected RepositoryFactorySupport createRepositoryFactory(
			EntityManager entityManager) {

		return new TenantAwareRepositoryFactory(entityManager);
	}

	private static class TenantAwareRepositoryFactory<T, I extends Serializable>
			extends JpaRepositoryFactory {

		private EntityManager entityManager;

		public TenantAwareRepositoryFactory(EntityManager entityManager) {
			super(entityManager);

			this.entityManager = entityManager;
		}

		@SuppressWarnings("unchecked")
		protected Object getTargetRepository(RepositoryMetadata metadata) {

			return new TenantAwareRepositoryImpl<T, I>(
					(Class<T>) metadata.getDomainType(), entityManager);
		}

		protected Class<?> getRepositoryBaseClass(RepositoryMetadata metadata) {
			return TenantAwareRepositoryImpl.class;
		}
	}
}
