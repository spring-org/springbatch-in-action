CREATE TABLE dbmsexpert.TB_SIGNGU
(
    SIGNGU_CODE    INT             NOT NULL,
    SIGNGU_NM      VARCHAR2(50)    NOT NULL,
    CTPRVN_CODE    INT             NOT NULL,
    CONSTRAINT TB_SIGNGU_PK PRIMARY KEY (SIGNGU_CODE)
)
/

CREATE SEQUENCE dbmsexpert.TB_SIGNGU_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER dbmsexpert.TB_SIGNGU_AI_TRG
BEFORE INSERT ON dbmsexpert.TB_SIGNGU
REFERENCING NEW AS NEW FOR EACH ROW
BEGIN
    SELECT dbmsexpert.TB_SIGNGU_SEQ.NEXTVAL
    INTO :NEW.SIGNGU_CODE
    FROM DUAL;
END;
/

--DROP TRIGGER dbmsexpert.TB_SIGNGU_AI_TRG;
/

--DROP SEQUENCE dbmsexpert.TB_SIGNGU_SEQ;
/

COMMENT ON TABLE dbmsexpert.TB_SIGNGU IS 'signgu_manage_table'
/

COMMENT ON COLUMN dbmsexpert.TB_SIGNGU.SIGNGU_CODE IS '시군구 코드'
/

COMMENT ON COLUMN dbmsexpert.TB_SIGNGU.SIGNGU_NM IS '시군구 명'
/

COMMENT ON COLUMN dbmsexpert.TB_SIGNGU.CTPRVN_CODE IS '시도 코드'
/