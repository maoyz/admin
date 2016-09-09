package com.funny.admin.domain.sys.enums;

/**
 * Created by fangli@autohome.com.cn on 2016/9/9.
 */
public enum UserStatusEnum {
    NORMAL(1,"正常"),LOCK(2,"禁用");
    private Integer value;
    private String desc;

    UserStatusEnum(Integer value, String desc) {
        this.value = value;
        this.desc = desc;
    }

    public Integer getValue() {
        return value;
    }

    public void setValue(Integer value) {
        this.value = value;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }
}
