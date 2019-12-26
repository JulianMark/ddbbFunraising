SELECT (SELECT COUNT (D.ID)
          FROM DONATIONS D JOIN CAMPAIGNS C ON C.ID = D.ID_CAMPAIGN
          WHERE 1 = 1
          AND  D.ID_EMPLOYEE_TEAM = 1
          AND C.ID_OSC = 1
          AND  MONTH(D.CREATE_DATE) = 12
          AND YEAR(D.CREATE_DATE)= 2019) TOTALDONATIONS,
       (SELECT SUM (D.AMOUNT)
          FROM DONATIONS D JOIN CAMPAIGNS C ON C.ID = D.ID_CAMPAIGN
          WHERE 1 = 1
          AND  D.ID_EMPLOYEE_TEAM = 1
          AND C.ID_OSC = 1
          AND  MONTH(D.CREATE_DATE) = 12
          AND YEAR(D.CREATE_DATE)= 2019) TOTALAMOUNTDONATIONS,
       (SELECT COUNT (D.ID_TYPE_PAY)
          FROM DONATIONS D JOIN CAMPAIGNS C ON C.ID = D.ID_CAMPAIGN
          WHERE 1 = 1
          AND  D.ID_EMPLOYEE_TEAM = 1
          AND C.ID_OSC = 1
          AND  MONTH(D.CREATE_DATE) = 12
          AND YEAR(D.CREATE_DATE)= 2019
          AND D.ID_TYPE_PAY =1) CREDITTYPE,
       (SELECT SUM (DR.PRODUCTIVE_HOURS)
          FROM DAILY_RECORDS DR JOIN CAMPAIGNS C ON C.ID = DR.ID_CAMPAIGN
          WHERE 1 = 1
          AND  DR.ID_EMPLOYEE_TEAM = 1
          AND C.ID_OSC = 1
          AND  MONTH(DR.CREATE_DATE) = 12
          AND YEAR(DR.CREATE_DATE)= 2019) TOTALPRODUCTIVEHOURS,
       (SELECT SUM (DR.NON_PRODUCTIVE_HOURS)
          FROM DAILY_RECORDS DR JOIN CAMPAIGNS C ON C.ID = DR.ID_CAMPAIGN
          WHERE 1 = 1
          AND  DR.ID_EMPLOYEE_TEAM = 1
          AND C.ID_OSC = 1
          AND  MONTH(DR.CREATE_DATE) = 12
          AND YEAR(DR.CREATE_DATE)= 2019) TOTALNONPRODUCTIVEHOURS
