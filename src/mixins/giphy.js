// Giphy API Mixin ..
riot.mixin({

  // API key ( private personel key  ) ..
  _key: 'QtybVEQwo0O4csQFEJyEaDvJ80H9c0IO',

  // API request url ..
  _url: 'http://api.giphy.com/v1/gifs/search',

  // Observable object ..
  giphy: riot.observable(),

  // Search method ..
  giphySearch: function(search_value) {

    // Notify of search started ..
    this.giphy.trigger('start');

    // Create new request ( AJAX ) .. 
    let xhr = new XMLHttpRequest();
    xhr.open('GET', `${this._url}?api_key=${this._key}&q=${encodeURIComponent(search_value)}`)
    xhr.onload = () => {

      // Notify of new results ..
      this.giphy.trigger('complete', (xhr.status === 200) ? JSON.parse(xhr.responseText) : null); // ('event' , response ) .. 
      
    };
    xhr.send();

  }

});
