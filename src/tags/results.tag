<results>

  <!-- display search spinner .. -->
  <spinner if={isSearching}></spinner>
  
  <!-- display all results -->
  <div if={hasRes} class="row row-wrap">
     <giphy each={results} preview={images.preview_gif.url} download={images.original.url}></giphy>
  </div>

  <script>

      // Result Array .. 
      this.results = [] ; 

      // Lisen to Search started .. 
      this.giphy.on('start',() => {

        // Show spinner .. 
         this.isSearching = true;
         this.hasRes = false;
         
        // Update the DOM ..  
         this.update();

      });

      // Listen for new results ( complete event ) ..
      this.giphy.on('complete', (ResponseResult) => {

         // Put all result in the results components .. 
         this.results = ResponseResult.data ;

         // Show Results .. 
         this.isSearching = false 
         this.hasRes = true 

         // Update the DOM .. 
         this.update();

      });

  </script>
  
</results>
