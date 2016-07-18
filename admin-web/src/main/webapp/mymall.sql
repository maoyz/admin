CREATE TABLE admin_department
(
    DEPARTMENT_ID VARCHAR(100) PRIMARY KEY NOT NULL,
    NAME VARCHAR(30),
    NAME_EN VARCHAR(50),
    BIANMA VARCHAR(50),
    PARENT_ID VARCHAR(100),
    BZ VARCHAR(255),
    HEADMAN VARCHAR(30),
    TEL VARCHAR(50),
    FUNCTIONS VARCHAR(255),
    ADDRESS VARCHAR(255)
);
CREATE TABLE admin_dict
(
    id INT,
    dict_id INT,
    dict_name VARCHAR(255)
);
CREATE TABLE admin_dictionary
(
    DICTIONARIES_ID VARCHAR(100) PRIMARY KEY NOT NULL,
    NAME VARCHAR(30),
    NAME_EN VARCHAR(50),
    BIANMA VARCHAR(50),
    ORDER_BY INT NOT NULL,
    PARENT_ID VARCHAR(100),
    BZ VARCHAR(255),
    TBSNAME VARCHAR(100)
);
CREATE TABLE admin_menu
(
    MENU_ID INT PRIMARY KEY NOT NULL,
    MENU_NAME VARCHAR(255),
    MENU_URL VARCHAR(255),
    PARENT_ID VARCHAR(100),
    MENU_ORDER VARCHAR(100),
    MENU_ICON VARCHAR(60),
    MENU_TYPE VARCHAR(10),
    MENU_STATE INT
);
CREATE TABLE admin_parameter
(
    id BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    param_name VARCHAR(255),
    param_value VARCHAR(255),
    param_type TINYINT,
    note VARCHAR(255),
    create_by BIGINT,
    create_time DATETIME,
    update_by BIGINT,
    update_time DATETIME,
    yn TINYINT
);
CREATE TABLE admin_role
(
    ROLE_ID VARCHAR(100) PRIMARY KEY NOT NULL,
    ROLE_NAME VARCHAR(100),
    RIGHTS VARCHAR(255),
    PARENT_ID VARCHAR(100),
    ADD_QX VARCHAR(255),
    DEL_QX VARCHAR(255),
    EDIT_QX VARCHAR(255),
    CHA_QX VARCHAR(255)
);
CREATE TABLE admin_user
(
    USER_ID VARCHAR(100) PRIMARY KEY NOT NULL,
    USERNAME VARCHAR(255),
    PASSWORD VARCHAR(255),
    NAME VARCHAR(255),
    RIGHTS VARCHAR(255),
    ROLE_ID VARCHAR(100),
    LAST_LOGIN VARCHAR(255),
    IP VARCHAR(15),
    STATUS VARCHAR(32),
    BZ VARCHAR(255),
    SKIN VARCHAR(100),
    EMAIL VARCHAR(32),
    NUMBER VARCHAR(100),
    PHONE VARCHAR(32)
);
CREATE TABLE admin_user_role
(
    id BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id BIGINT,
    role_id BIGINT,
    create_time DATETIME,
    create_by BIGINT,
    update_time DATETIME,
    update_by BIGINT,
    yn TINYINT
);
CREATE TABLE weixin_message
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nick_name VARCHAR(300),
    head_img_url VARCHAR(300),
    content LONGTEXT,
    create_time TIMESTAMP
);
CREATE TABLE weixin_token
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    token VARCHAR(200),
    expires_in INT,
    token_time TIMESTAMP
);