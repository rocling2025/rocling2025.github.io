  <div class="container">
    <div class="section-header">
      <h2>Sponsors</h2>
    </div>
    {{~it.sponsors :sponsor:index}}
      {{? index % 4 === 0 }}
        <div class="row no-gutters sponsors-wrap clearfix">
      {{?}}

      <div class="col-lg-3 col-md-4 col-xs-6">
        <div class="sponsor-logo">
          <a href="{{=sponsor.href}}" target="_blank">
            <img src="{{=sponsor.imgSrc}}" class="img-fluid" alt="{{=sponsor.alt}}">
          </a>
        </div>
      </div>

      {{? (index + 1) % 4 === 0 || (index + 1) === it.sponsors.length }}
        </div>
      {{?}}
    {{~}}
  </div>
