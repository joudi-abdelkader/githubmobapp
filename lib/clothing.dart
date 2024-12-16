class Clothing{

  String sex = '';
  String occasion;
  int ageGroup= 0;


  Clothing(this.occasion, {this.sex = '', this.ageGroup = 0});
  @override
  String toString (){
    String message='';
    if(sex == 'Male'){
      if(ageGroup ==1){
        if(occasion == 'Casual Occasion'){
          message ='Wear well-fitted jeans or chinos with a plain t-shirt or casual shirt, paired with sneakers or loafers for a simple yet stylish casual look.';

        }
        else if (occasion =='Formal Occasion'){
          message='Wear tailored trousers with a crisp dress shirt, add a blazer for elegance, and complete the look with polished leather shoes.';

        }
        else if (occasion == 'Sporty Occasion'){
          message='Wear comfortable joggers or athletic shorts with a moisture-wicking t-shirt, and complete the look with sporty sneakers and a lightweight hoodie or jacket if needed.';

        }
        else{
          message ='Wear slim-fit jeans or leather pants with a graphic t-shirt or stylish shirt, layer with a denim or leather jacket, and finish the look with boots or edgy sneakers.';

        }
      }
      else if(ageGroup ==2){
        if(occasion == 'Casual Occasion'){
          message ='Wear trendy jeans or chinos with a graphic t-shirt, and complete the look with sneakers or casual boots.';

        }
        else if (occasion =='Formal Occasion'){
          message='Wear slim-fit trousers with a stylish dress shirt, paired with a blazer and polished shoes for a modern formal look.';

        }
        else if (occasion == 'Sporty Occasion'){
          message='Opt for athletic joggers or shorts, a fitted hoodie, and comfortable sneakers for an active and sporty vibe.';

        }
        else{
          message ='Go for ripped jeans, a band t-shirt, and a leather jacket, paired with sneakers or boots for a cool concert-ready outfit.';

        }
      }
      else{
        message="Please make sure your are selecting your age group";
      }

    }
    else if(sex=='Female'){
      if(ageGroup ==1){
        if(occasion == 'Casual Occasion'){
          message ='Wear a stylish blouse or top with well-fitted jeans or trousers, and pair it with comfortable flats or casual boots.';

        }
        else if (occasion =='Formal Occasion'){
          message='Opt for a tailored dress or a blouse with a pencil skirt, and finish the look with heels or dress shoes for an elegant, polished appearance.';

        }
        else if (occasion == 'Sporty Occasion'){
          message='Go for leggings or athletic pants paired with a breathable t-shirt or tank top, and complete the outfit with sporty sneakers.';

        }
        else{
          message ='Wear a chic jacket over a simple top with skinny jeans or leather pants, and finish with ankle boots or heels for a fashionable concert look.';

        }
      }
      else if(ageGroup==2){
        if(occasion == 'Casual Occasion'){
          message ='Try a trendy oversized sweater with high-waisted jeans or leggings, and add sneakers or chunky boots for a youthful casual look.';

        }
        else if (occasion =='Formal Occasion'){
          message='Wear a modern shift dress or a stylish blouse with a skirt, and pair it with block heels or fashionable flats for a youthful take on formal wear.';

        }
        else if (occasion == 'Sporty Occasion'){
          message='Opt for joggers or leggings with a fun graphic t-shirt, and complete the look with comfortable sneakers and a sporty jacket.';

        }
        else{
          message ='Go for a cropped top with ripped jeans or a mini skirt, and pair it with trendy sneakers or combat boots for an edgy concert look.';

        }
      }
      else{
        message="Please make sure your are selecting your age group";
      }

    }
    else{
      message ="Please make sure you are selecting your sex";
    }

    return message;
  }

}
List<Clothing> clothe =[
  Clothing('Casual Occasion',),
  Clothing('Formal Occasion'),
  Clothing('Sporty Occasion',),
  Clothing('Concert Occasion',),
];