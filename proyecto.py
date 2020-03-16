
import cx_Oracle
import os
os.system('cls||clear')

contraseña= "SCOUTS_HONOR"
# antes se usaba "input("contraseña:")" pero esto es innecesario"

connection = cx_Oracle.connect("TEEMO", contraseña, "localhost/orcl")
cursor = connection.cursor()

def op_index():
    cursor.execute("""select index_name, column_name, table_name
    from user_ind_columns""")
    for ind, col, tab in cursor:
        print("Indice:", ind, "Columna:", col, "Tabla:", tab)
    input("Presione Enter para continuar")
    os.system('cls||clear')

def op_tab_ind():
    cursor.execute("""select table_name
    from user_tables""")
    tnames = cursor.fetchall()
    for tname in tnames:
        cursor.execute("""select count(index_name)
        from user_indexes
        where TABLE_NAME = :tname""", tname)
        for tam in cursor:
            print("Tabla:", tname[0], "Numero de indices asociados:", tam[0])
    input("Presione Enter para continuar")
    os.system('cls||clear')

def op_constraint():
    cursor.execute("""select constraint_name, constraint_type, table_name 
    from USER_CONSTRAINTS""")
    for cons, ct, tab in cursor:
        print("Restriccion:", cons, "Tipo:", ct, "Tabla:", tab)
    input("Presione Enter para continuar")
    os.system('cls||clear')

def op_trigger():
    cursor.execute("""select trigger_name, trigger_type, status, table_name
    from user_triggers""")
    for tname, trt, stat, tab in cursor:
        print("Trigger:", tname, "Tipo:", trt, "Status:", stat, "Tabla:", tab)
    input("Presione Enter para continuar")
    os.system('cls||clear')

def op_tam_col():
    cursor.execute("""select TABLE_NAME, COLUMN_NAME, DATA_LENGTH 
    from user_tab_columns""")
    for tname, cname, tam in cursor:
        print("Tabla:", tname, "Columna:", cname, "Tamaño:", tam, "bytes")
    input("Presione Enter para continuar")
    os.system('cls||clear')

def op_tam_reg():
    cursor.execute("""select TABLE_NAME
    from user_tables""")
    tnames = cursor.fetchall()
    for tname in tnames:
        cursor.execute("""select SUM(DATA_LENGTH)
        from user_tab_columns 
        where TABLE_NAME = :tname""", tname)
        for tam in cursor:
            print("Tabla:", tname[0], "Tamaño de registro:", tam[0]+1, "bytes")
    
    input("Presione Enter para continuar")
    os.system('cls||clear')

def op_tam_tab():
    cursor.execute("""select table_name, blocks
    from user_tables""")
    for tname, block in cursor:
        print("Tabla:", tname, "Tamaño:", block, "bloques usados")
    input("Presione Enter para continuar")
    os.system('cls||clear')

def op_procedures():
    cursor.execute("""select object_name 
    from user_procedures
    where object_type like 'PROCEDURE'""")
    for oname in cursor:
        print("Procedimiento:", oname[0] )
    input("Presione Enter para continuar")
    os.system('cls||clear')

def op_tam_db():
    cursor.execute("""select sum(bytes)/1024/1024 from user_extents """)
    for tam in cursor:
        print("Ttamaño total de la base de datos:", tam[0],"MB" )
    input("Presione Enter para continuar")
    os.system('cls||clear')

def op_block():
    cursor.execute("""select TABLE_NAME from user_tables""")
    tnames = cursor.fetchall()
    for tname in tnames:
        cursor.execute("""select SUM(DATA_LENGTH)+1
        from user_tab_columns 
        where TABLE_NAME = :tname""", tname)
        for tam in cursor:
            print("Tabla:", tname[0], "Factor de bloqueo:",  8192//tam[0])
    
    cursor.execute("""select index_name,  column_length+8
    from user_ind_columns""")
    for ind, tam in cursor:
        print("Indice:", ind, "Factor de bloqueo:",  8192//tam)
    input("Presione Enter para continuar")
    os.system('cls||clear')



op = ""
while(op!="x"):
    print("""Seleccione:
    1. Tndices.
    2. #Indices por tabla.
    3. Restricciones.
    4. Triggers.
    5. Tamaño de cada columna en bytes.
    6. Tamaño de cada registro en bytes.
    7. Tamaño de las tablas en bloques.
    8. Procedimientos del esquema.
    9. Tamaño total de la base de datos.
    0. Factor de bloqueo de tablas e índices.
    x. Salir""")
    op=input("opcion: ")
    if op=="1":
        os.system('cls||clear')
        op_index()
    elif op=="2":
        os.system('cls||clear')
        op_tab_ind()
    elif op=="3":
        os.system('cls||clear')
        op_constraint()
    elif op=="4":
        os.system('cls||clear')
        op_trigger()
    elif op=="5":
        os.system('cls||clear')
        op_tam_col()
    elif op=="6":
        os.system('cls||clear')
        op_tam_reg()
    elif op=="7":
        os.system('cls||clear')
        op_tam_tab()
    elif op=="8":
        os.system('cls||clear')
        op_procedures()
    elif op=="9":
        os.system('cls||clear')
        op_tam_db()
    elif op=="0":
        os.system('cls||clear')
        op_block()
    elif op=="x":
        os.system('cls||clear')
        connection.close()


 