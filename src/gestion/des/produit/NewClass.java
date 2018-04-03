package gestion.des.produit;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import javax.swing.table.*;

class ColorRenderer extends JLabel implements TableCellRenderer
    {
     private String columnName;
     public ColorRenderer(String column)
         {
         this.columnName = column;
         setOpaque(true);
     }
     public Component getTableCellRendererComponent(JTable table, Object value,boolean isSelected, boolean hasFocus, int row, int column)
         {
         Object columnValue=table.getValueAt(row,table.getColumnModel().getColumnIndex(columnName));
        
         if (value != null) setText(value.toString());
         if(isSelected)
             {
             setBackground(table.getSelectionBackground());
             setForeground(table.getSelectionForeground());
         }
         else
             {
             setBackground(table.getBackground());
             setForeground(table.getForeground());
             if (columnValue.equals("1")) setBackground(java.awt.Color.pink);
             if (columnValue.equals("2")) setBackground(java.awt.Color.green);
             if (columnValue.equals("3")) setBackground(java.awt.Color.red);
             if (columnValue.equals("4")) setBackground(java.awt.Color.blue);
            
         }
         return this;
     }
}

