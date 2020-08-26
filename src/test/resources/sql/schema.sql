SELECT COUNT(1) FROM CSV_TABLE;

truncate TABLE CSV_TABLE;

DROP TABLE CSV_TABLE;
CREATE TABLE CSV_TABLE
(
    LBRRY_CODE                 INT                  NOT NULL,
    LBRRY_NM                   VARCHAR2(100)        NOT NULL,
    CTPRVN_NM                  VARCHAR2(50)         NOT NULL,
    SIGNGU_NM                  VARCHAR2(50)         NOT NULL,
    LBRRY_SE                   VARCHAR2(20)         NULL,
    CLOSE_DAY                  VARCHAR2(300)        NULL,
    WEEKDAY_OPER_OPEN_Hhmm     VARCHAR2(5)          NULL,
    WEEKDAY_OPER_CLOSE_Hhmm    VARCHAR2(5)          NULL,
    SAT_OPER_OPEN_Hhmm         VARCHAR2(5)          NULL,
    SAT_OPER_CLOSE_Hhmm        VARCHAR2(5)          NULL,
    HOLIDAY_OPER_OPEN_Hhmm     VARCHAR2(5)          NULL,
    HOLIDAY_OPER_CLOSE_Hhmm    VARCHAR2(5)          NULL,
    SEAT_Co                    VARCHAR2(20)         NULL,
    BOOK_Co                    VARCHAR2(20)         NULL,
    PBLICTN_Co                 VARCHAR2(20)         NULL,
    NONEBOOK_Co                VARCHAR2(20)         NULL,
    LON_Co                     VARCHAR2(20)         NULL,
    LONDAY_Co                  VARCHAR2(20)         NULL,
    RDNM_adr                   VARCHAR2(200)        NULL,
    OPERINSTITUTION_NM         VARCHAR2(150)        NULL,
    LBRRY_PHONENUMBER          VARCHAR2(30)         NULL,
    PLOT_AR                    VARCHAR2(20)         NULL,
    BULD_AR                    VARCHAR2(20)         NULL,
    HOMEPAGEURL                VARCHAR2(150)        NULL,
    LATITUDE                   VARCHAR2(20)         NULL,
    LONGITUDE                  VARCHAR2(20)         NULL,
    REFERENCE_DATE             VARCHAR2(20)         NULL,
    INSTT_CODE                 VARCHAR2(20)         NULL,
    INSTT_NM                   VARCHAR2(100)        NULL,
    CONSTRAINT CSV_TABLE_PK PRIMARY KEY (LBRRY_CODE)
)
/
drop SEQUENCE CSV_TABLE_SEQ;
CREATE SEQUENCE CSV_TABLE_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER CSV_TABLE_AI_TRG
BEFORE INSERT ON CSV_TABLE
REFERENCING NEW AS NEW FOR EACH ROW
BEGIN
    SELECT CSV_TABLE_SEQ.NEXTVAL
    INTO :NEW.LBRRY_CODE
    FROM DUAL;
END;
/

--DROP TRIGGER CSV_TABLE_AI_TRG;
/

--DROP SEQUENCE CSV_TABLE_SEQ;
/

COMMENT ON TABLE CSV_TABLE IS '전국도서관표준데이터_매핑_테이블'
/

COMMENT ON COLUMN CSV_TABLE.LBRRY_CODE IS '도서관 코드'
/

COMMENT ON COLUMN CSV_TABLE.LBRRY_NM IS '도서관 명'
/

COMMENT ON COLUMN CSV_TABLE.CTPRVN_NM IS '시도 명'
/

COMMENT ON COLUMN CSV_TABLE.SIGNGU_NM IS '시군구 명'
/

COMMENT ON COLUMN CSV_TABLE.LBRRY_SE IS '도서관 유형'
/

COMMENT ON COLUMN CSV_TABLE.CLOSE_DAY IS '휴관일'
/

COMMENT ON COLUMN CSV_TABLE.WEEKDAY_OPER_OPEN_Hhmm IS '평일 운영 시작 시간'
/

COMMENT ON COLUMN CSV_TABLE.WEEKDAY_OPER_CLOSE_Hhmm IS '평일 운영 종료 시간'
/

COMMENT ON COLUMN CSV_TABLE.SAT_OPER_OPEN_Hhmm IS '토요일 운영 시작 시간'
/

COMMENT ON COLUMN CSV_TABLE.SAT_OPER_CLOSE_Hhmm IS '토요일 운영 종료 시간'
/

COMMENT ON COLUMN CSV_TABLE.HOLIDAY_OPER_OPEN_Hhmm IS '공휴일 운영 시작 시간'
/

COMMENT ON COLUMN CSV_TABLE.HOLIDAY_OPER_CLOSE_Hhmm IS '공휴일 운영 종료 시간'
/

COMMENT ON COLUMN CSV_TABLE.SEAT_Co IS '열람좌석 수'
/

COMMENT ON COLUMN CSV_TABLE.BOOK_Co IS '자료(도서) 수'
/

COMMENT ON COLUMN CSV_TABLE.PBLICTN_Co IS '자료(연간간행물) 수'
/

COMMENT ON COLUMN CSV_TABLE.NONEBOOK_Co IS '자료(비도서) 수'
/

COMMENT ON COLUMN CSV_TABLE.LON_Co IS '대출가능권 수'
/

COMMENT ON COLUMN CSV_TABLE.LONDAY_Co IS '대출가능일 수'
/

COMMENT ON COLUMN CSV_TABLE.RDNM_adr IS '소재지도로명 주소'
/

COMMENT ON COLUMN CSV_TABLE.OPERINSTITUTION_NM IS '운영기관 명'
/

COMMENT ON COLUMN CSV_TABLE.LBRRY_PHONENUMBER IS '도서관 전화번호'
/

COMMENT ON COLUMN CSV_TABLE.PLOT_AR IS '부지 면적'
/

COMMENT ON COLUMN CSV_TABLE.BULD_AR IS '건물 면적'
/

COMMENT ON COLUMN CSV_TABLE.HOMEPAGEURL IS '홈페이지주소'
/

COMMENT ON COLUMN CSV_TABLE.LATITUDE IS '위도'
/

COMMENT ON COLUMN CSV_TABLE.LONGITUDE IS '경도'
/

COMMENT ON COLUMN CSV_TABLE.REFERENCE_DATE IS '데이터기준 일자'
/

COMMENT ON COLUMN CSV_TABLE.INSTT_CODE IS '제공기관 코드'
/

COMMENT ON COLUMN CSV_TABLE.INSTT_NM IS '제공기관 명'
/