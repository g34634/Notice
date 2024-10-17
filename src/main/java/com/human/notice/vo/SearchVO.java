package com.human.notice.vo;

public class SearchVO {
    private String category;
    private String searchType;  // 검색 유형 (제목, 내용, 제목+내용)
    private String keyword;     // 검색 키워드

    // Getter and Setter for category
    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    // Getter and Setter for searchType
    public String getSearchType() {
        return searchType;
    }

    public void setSearchType(String searchType) {
        this.searchType = searchType;
    }

    // Getter and Setter for keyword
    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }
}
