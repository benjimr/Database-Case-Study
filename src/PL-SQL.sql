--PL/SQL transaction for a customer to add a component to a computer
Set Serveroutput On
Declare
    --read the info from customer
    v_CustID DT2283B6.Customer.CustID%Type := '&Enter_Customer_ID';
    v_OrderNo DT2283B6.COrder.OrderNo%Type := '&Enter_Order_Number';
    v_CompID DT2283B6.Computer.CompID%Type := '&Enter_Computer_ID';    
    v_Action Varchar2(10) := upper('&Enter_Delete_Or_Add_Or_Display');
    v_SerialNo DT2283B6.Component.SerialNo%Type := '&Serial_No_Blank_if_Display';
    
Begin    
    --Ensure customer id is the owner of the given order number
    select CustId into v_CustId from COrder
    where v_CustID = CustId
    and v_OrderNo = OrderNo;
        
    --Ensure computer id given is on the given order
    select CompId into v_CompId from Computer
    where v_CompId = CompId
    and v_OrderNo = OrderNo;
        
    --Ensure serial number given references a valid row
    if(v_SerialNo is not null)
    then
        select SerialNo into v_SerialNo from Component
        where v_SerialNo = SerialNo;
    end if;
    
    --either delete or add the component and display
    if(v_Action = 'DELETE')
    then
        delete from OrderLine
        where v_CompId = CompId
        and v_SerialNo = SerialNo;
        
        dbms_output.put_line('Successfully deleted');
        v_Action := 'DISPLAY';
    elsif(v_Action = 'ADD')
    then
        insert into OrderLine (CompID, SerialNo)
        values (v_CompID, v_SerialNo);
        
        dbms_output.put_line('Successfully Added');
        v_Action := 'DISPLAY';
    end if;
    commit;
        
    --Display Components for the selected computer
    if(v_Action = 'DISPLAY')
    then
        for i in (select SerialNo, CompType, SuppName from OrderLine
                join Component using(SerialNo)
                join Supplier using(SuppName)
                where CompID = v_CompID)
        loop
            dbms_output.put_line('Serial No: ' || i.SerialNo || ' Type: ' || i.CompType || ' Supplier: ' || i.SuppName);
        end loop;
    end if;
    
    
Exception
    When others then
        dbms_output.put_line('Error: Rolling Back' || SQLERRM);
        Rollback;

End;