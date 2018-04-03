
import gestion.des.produit.ColorRenderer;
import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

public class TableRowColor2 extends JFrame
    {
     public TableRowColor2()
         {
             JTable table=new JTable(new DefaultTableModel(new Object[][]{
             {"1","2","3","4"},
             {"2","3","4","5"},
             {"3","4","5","6"},
         {"4","5","6","7"}},
         new Object[]{"A","B","C","D"}));
        
         ColorRenderer cr=new ColorRenderer("A");
        
         //Adding this line of code will color only the first column and different colors for
         //each row and dont forget to comment the for loop
         //table.getColumnModel().getColumn(0).setCellRenderer(cr);
        
         for (int i=0;i         table.getColumn(table.getColumnName(i)).setCellRenderer(cr);
         JScrollPane scroll=new JScrollPane(table);
         this.setContentPane(scroll);
         this.setBounds(100,50,300,150);
     }
     public static void main (String arg[])
         {
         TableRowColor2 tes = new TableRowColor2();
         tes.setVisible(true);
         tes.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
     }
}
