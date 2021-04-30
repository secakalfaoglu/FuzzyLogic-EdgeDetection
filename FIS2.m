function [ edge_img] = FIS2( img )
edge_img=zeros(size(img));
for i=2:size(img,1)-2
    for j=2:size(img,2)-2
        
        %rule with 3 black and 5 white pixels in neighborhood
        if (img(i-1,j-1)==1) && (img(i-1,j)==1) && (img(i-1,j+1)==1) && (img(i,j-1)==1) && 
            (img(i,j+1)==1) && (img(i+1,j-1)==0) && (img(i+1,j)==0) && (img(i+1,j+1)==0) 
        edge_img(i,j)=90;
        end
         if (img(i-1,j-1)==1) && (img(i-1,j)==1) && (img(i-1,j+1)==0) && (img(i,j-1)==1) && 
             (img(i,j+1)==0) && (img(i+1,j-1)==1) && (img(i+1,j)==1) && (img(i+1,j+1)==0) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==0) && (img(i-1,j)==0) && (img(i-1,j+1)==0) && (img(i,j-1)==1) && 
             (img(i,j+1)==1) && (img(i+1,j-1)==1) && (img(i+1,j)==1) && (img(i+1,j+1)==1) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==0) && (img(i-1,j)==1) && (img(i-1,j+1)==1) && (img(i,j-1)==0) && 
             (img(i,j+1)==1) && (img(i+1,j-1)==0) && (img(i+1,j)==1) && (img(i+1,j+1)==1) 
        edge_img(i,j)=90;
         end
        
         %rule with 4 black and 4 white pixels in neighborhood
         if (img(i-1,j-1)==1) && (img(i-1,j)==0) && (img(i-1,j+1)==0) && (img(i,j-1)==1) && 
             (img(i,j+1)==0) && (img(i+1,j-1)==1) && (img(i+1,j)==1) && (img(i+1,j+1)==0) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==1) && (img(i-1,j)==1) && (img(i-1,j+1)==0) && (img(i,j-1)==1) && 
             (img(i,j+1)==0) && (img(i+1,j-1)==1) && (img(i+1,j)==0) && (img(i+1,j+1)==0) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==0) && (img(i-1,j)==0) && (img(i-1,j+1)==1) && (img(i,j-1)==0) && 
             (img(i,j+1)==1) && (img(i+1,j-1)==0) && (img(i+1,j)==1) && (img(i+1,j+1)==1) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==0) && (img(i-1,j)==1) && (img(i-1,j+1)==1) && (img(i,j-1)==0) && 
             (img(i,j+1)==1) && (img(i+1,j-1)==0) && (img(i+1,j)==0) && (img(i+1,j+1)==1) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==1) && (img(i-1,j)==1) && (img(i-1,j+1)==1) && (img(i,j-1)==0) && 
             (img(i,j+1)==1) && (img(i+1,j-1)==0) && (img(i+1,j)==0) && (img(i+1,j+1)==0) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==1) && (img(i-1,j)==1) && (img(i-1,j+1)==1) && (img(i,j-1)==1) && 
             (img(i,j+1)==0) && (img(i+1,j-1)==0) && (img(i+1,j)==0) && (img(i+1,j+1)==0) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==0) && (img(i-1,j)==0) && (img(i-1,j+1)==0) && (img(i,j-1)==1) && 
             (img(i,j+1)==0) && (img(i+1,j-1)==1) && (img(i+1,j)==1) && (img(i+1,j+1)==1) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==0) && (img(i-1,j)==0) && (img(i-1,j+1)==0) && (img(i,j-1)==0) && 
             (img(i,j+1)==1) && (img(i+1,j-1)==1) && (img(i+1,j)==1) && (img(i+1,j+1)==1) 
        edge_img(i,j)=90;
         end
         
         %rule with 5 black and 3 white pixels in the neighborhood
         if (img(i-1,j-1)==0) && (img(i-1,j)==0) && (img(i-1,j+1)==1) && (img(i,j-1)==0) && 
             (img(i,j+1)==1) && (img(i+1,j-1)==0) && (img(i+1,j)==0) && (img(i+1,j+1)==1) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==1) && (img(i-1,j)==1) && (img(i-1,j+1)==1) && (img(i,j-1)==0) && 
             (img(i,j+1)==0) && (img(i+1,j-1)==0) && (img(i+1,j)==0) && (img(i+1,j+1)==0) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==1) && (img(i-1,j)==0) && (img(i-1,j+1)==0) && (img(i,j-1)==1) && 
             (img(i,j+1)==0) && (img(i+1,j-1)==1) && (img(i+1,j)==0) && (img(i+1,j+1)==0) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==0) && (img(i-1,j)==0) && (img(i-1,j+1)==0) && (img(i,j-1)==0) && 
             (img(i,j+1)==0) && (img(i+1,j-1)==1) && (img(i+1,j)==1) && (img(i+1,j+1)==1) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==0) && (img(i-1,j)==0) && (img(i-1,j+1)==0) && (img(i,j-1)==0) && 
             (img(i,j+1)==1) && (img(i+1,j-1)==0) && (img(i+1,j)==1) && (img(i+1,j+1)==1) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==0) && (img(i-1,j)==1) && (img(i-1,j+1)==1) && (img(i,j-1)==0) && 
             (img(i,j+1)==1) && (img(i+1,j-1)==0) && (img(i+1,j)==0) && (img(i+1,j+1)==0) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==1) && (img(i-1,j)==1) && (img(i-1,j+1)==0) && (img(i,j-1)==1) && 
             (img(i,j+1)==0) && (img(i+1,j-1)==0) && (img(i+1,j)==0) && (img(i+1,j+1)==0) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==0) && (img(i-1,j)==0) && (img(i-1,j+1)==0) && (img(i,j-1)==1) && 
             (img(i,j+1)==0) && (img(i+1,j-1)==1) && (img(i+1,j)==1) && (img(i+1,j+1)==0) 
        edge_img(i,j)=90;
         end
         
         %rule with 6 black and 2 white pixels in the neighborhood
         if (img(i-1,j-1)==0) && (img(i-1,j)==1) && (img(i-1,j+1)==1) && (img(i,j-1)==0) && 
             (img(i,j+1)==0) && (img(i+1,j-1)==0) && (img(i+1,j)==0) && (img(i+1,j+1)==0) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==1) && (img(i-1,j)==0) && (img(i-1,j+1)==0) && (img(i,j-1)==1) && 
             (img(i,j+1)==0) && (img(i+1,j-1)==0) && (img(i+1,j)==0) && (img(i+1,j+1)==0) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==0) && (img(i-1,j)==0) && (img(i-1,j+1)==0) && (img(i,j-1)==1) && 
             (img(i,j+1)==0) && (img(i+1,j-1)==1) && (img(i+1,j)==0) && (img(i+1,j+1)==0) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==0) && (img(i-1,j)==0) && (img(i-1,j+1)==0) && (img(i,j-1)==0) && 
             (img(i,j+1)==1) && (img(i+1,j-1)==0) && (img(i+1,j)==0) && (img(i+1,j+1)==1) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==0) && (img(i-1,j)==1) && (img(i-1,j+1)==1) && (img(i,j-1)==0) && 
             (img(i,j+1)==0) && (img(i+1,j-1)==0) && (img(i+1,j)==0) && (img(i+1,j+1)==0) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==1) && (img(i-1,j)==1) && (img(i-1,j+1)==0) && (img(i,j-1)==0) && 
             (img(i,j+1)==0) && (img(i+1,j-1)==0) && (img(i+1,j)==0) && (img(i+1,j+1)==0) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==0) && (img(i-1,j)==0) && (img(i-1,j+1)==0) && (img(i,j-1)==0) && 
             (img(i,j+1)==0) && (img(i+1,j-1)==1) && (img(i+1,j)==1) && (img(i+1,j+1)==0) 
        edge_img(i,j)=90;
         end
         if (img(i-1,j-1)==0) && (img(i-1,j)==0) && (img(i-1,j+1)==0) && (img(i,j-1)==0) && 
             (img(i,j+1)==0) && (img(i+1,j-1)==0) && (img(i+1,j)==1) && (img(i+1,j+1)==1) 
        edge_img(i,j)=90;
         end
         
         %rule with all black or white pixels in the neighborhood
         if (img(i-1,j-1)==0) && (img(i-1,j)==0) && (img(i-1,j+1)==0) && (img(i,j-1)==0) && 
             (img(i,j+1)==0) && (img(i+1,j-1)==0) && (img(i+1,j)==0) && (img(i+1,j+1)==0) 
       % edge_img(i,j)=0;
         end
         if (img(i-1,j-1)==1) && (img(i-1,j)==1) && (img(i-1,j+1)==1) && (img(i,j-1)==1) && 
             (img(i,j+1)==1) && (img(i+1,j-1)==1) && (img(i+1,j)==1) && (img(i+1,j+1)==1) 
      %  edge_img(i,j)=0;
         end    
    end    
end

end

