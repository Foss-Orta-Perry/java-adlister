package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Favorite;

import java.sql.SQLException;
import java.util.List;

public interface Favorites {
    // get a list of all the ads
    List<Favorite> all();
    // insert a new ad and return the new ad's id
    Long insert(Favorite favorite);

    //find unique ad by Id
    Favorite getFavorite(long favorite) throws SQLException;

    List<Ad> searchFavorites(String search) throws SQLException;
}