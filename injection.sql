String jpql = "SELECT u FROM " + user.class.getCanonicalName() + " u" +  
" WHERE u.name = :user and u.password = :password";

Query query = JPA.em().createQuery(jpql, user.class);

query.setParameter("user", user).setParameter("password", password);

return query.getResultList();  
