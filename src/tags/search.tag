<search>

  <form onsubmit={search}>

    <input ref="search" type="text" placeholder=" search for any gif photo you want ... " />

  </form>

  <script>
  
     // Focues the search filed when the Tag Mounted ..
     this.on('mount',()=>{

        this.refs.search.focus() ;

     });

     // Search  submit handler
     this.search = ($event) => {

       $event.preventDefault();

       // Search the API .. 
       this.giphySearch(this.refs.search.value);

     };

  </script>


</search>