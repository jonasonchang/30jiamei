<div id="store" class="content col-md-12 ng-scope" style="overflow: hidden;" ng-controller="AdminController">        
    <form class="form-search ng-pristine ng-valid"> 
                    <div class="col-md-12 store-cart-content">
                      <div class="content-store col-md-6">
                        <a href="#/cart" title="go to shopping cart" ng-disabled="cart.getTotalCount() < 1" disabled="disabled">
                                        <img src="images/cart_white.png" alt="">
                                        <b class="ng-binding">0</b> items, <b class="ng-binding">$0.00</b>
                                    </a>
                        </div>
                       <div class="tabs-menu col-md-6">
                         <ul class="cbp-vm-options">
                            <!-- ngRepeat: section in sections --><li ng-repeat="section in sections" class="ng-scope">
                                <a class="cbp-vm-icon cbp-vm-grid cbp-vm-list" ng-class="{cbpvmselected : isSelected(section)}" ng-click="setMaster(section)">List View</a>
                            </li><!-- end ngRepeat: section in sections -->
                        </ul>
                       </div>
                    </div>
                    <div class="col-md-12 store-button-top">
                        <div class="content-search widget_search">
                           <input type="text" ng-model="query" ng-change="search('name')" class="search-query ng-pristine ng-valid ng-touched" placeholder="Search">
                           <input type="submit" value="Go">
                        </div>
                        <div class="filter-button-top">
                           <button class="btn flr-top-first active" ng-click="myFilter('category',null)">All</button>
                           <button class="btn flr-top" ng-click="myFilter('category','mac')">MacPro</button>
                           <button class="btn flr-top" ng-click="myFilter('category','ipad')">Ipad</button>
                           <button class="btn flr-top" ng-click="myFilter('category','phone')">Phone</button>
                           <button class="btn flr-top flr-last" ng-click="myFilter('category','sound')">Soud</button>
                       </div>
                    </div>
                    
                    <div id="cbp-vm" class="cbp-vm-switcher activegrid" ng-class="{true: '', false: 'activegrid'}[isActive]">
                        <ul id="product" class="nav-pills nav-stacked rectangle-list">
                            <!-- ngRepeat: product in pagedItems[currentPage] --><li class="my-gallery-animation ng-scope" ng-repeat="product in pagedItems[currentPage]">
                                <div class="img-prod"><img ng-src="images/apple1.png" alt="55&quot; Apple LCD TV" src="images/apple1.png"></div>

                                <a class="title ng-binding" href="#/products/APL"> 55" Apple LCD TV  </a>

                                <p class="description ng-binding"> Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat.  </p>
                                <a class="number ng-binding" href="#"> 1  </a>
                    
                                <a href="" ng-click="cart.addItem(product.code, product.name, product.price, 1)">
                                   <div class="btn btn-cart">Add cart</div>
                                </a>
                                <a class="details-button" href="#/products/APL">
                                   <div class="btn btn-cart">Details</div>
                                </a>
                                <p class="content_desc ng-binding"> 
                                        £2.00 
                                        <!--{{(product.price | number:2) + "€"}}-->
                                        <span ng-show="cart.getTotalCount(product.code) > 0" class="ng-binding ng-hide"><i class="fa fa-check"></i>0</span>
                                    </p>
                                <div class="clear"></div>
                          </li><!-- end ngRepeat: product in pagedItems[currentPage] --><li class="my-gallery-animation ng-scope" ng-repeat="product in pagedItems[currentPage]">
                                <div class="img-prod"><img ng-src="images/apple2.png" alt="Apple iPad" src="images/apple2.png"></div>

                                <a class="title ng-binding" href="#/products/AVC"> Apple iPad  </a>

                                <p class="description ng-binding"> Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat.  </p>
                                <a class="number ng-binding" href="#"> 2  </a>
                    
                                <a href="" ng-click="cart.addItem(product.code, product.name, product.price, 1)">
                                   <div class="btn btn-cart">Add cart</div>
                                </a>
                                <a class="details-button" href="#/products/AVC">
                                   <div class="btn btn-cart">Details</div>
                                </a>
                                <p class="content_desc ng-binding"> 
                                        £11.00 
                                        <!--{{(product.price | number:2) + "€"}}-->
                                        <span ng-show="cart.getTotalCount(product.code) > 0" class="ng-binding ng-hide"><i class="fa fa-check"></i>0</span>
                                    </p>
                                <div class="clear"></div>
                          </li><!-- end ngRepeat: product in pagedItems[currentPage] --><li class="my-gallery-animation ng-scope" ng-repeat="product in pagedItems[currentPage]">
                                <div class="img-prod"><img ng-src="images/apple6.png" alt="MacBookPro" src="images/apple6.png"></div>

                                <a class="title ng-binding" href="#/products/BAN"> MacBookPro  </a>

                                <p class="description ng-binding"> Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat.  </p>
                                <a class="number ng-binding" href="#"> 3  </a>
                    
                                <a href="" ng-click="cart.addItem(product.code, product.name, product.price, 1)">
                                   <div class="btn btn-cart">Add cart</div>
                                </a>
                                <a class="details-button" href="#/products/BAN">
                                   <div class="btn btn-cart">Details</div>
                                </a>
                                <p class="content_desc ng-binding"> 
                                        £6.00 
                                        <!--{{(product.price | number:2) + "€"}}-->
                                        <span ng-show="cart.getTotalCount(product.code) > 0" class="ng-binding ng-hide"><i class="fa fa-check"></i>0</span>
                                    </p>
                                <div class="clear"></div>
                          </li><!-- end ngRepeat: product in pagedItems[currentPage] --><li class="my-gallery-animation ng-scope" ng-repeat="product in pagedItems[currentPage]">
                                <div class="img-prod"><img ng-src="images/apple4.png" alt="MacBookPro" src="images/apple4.png"></div>

                                <a class="title ng-binding" href="#/products/CTP"> MacBookPro  </a>

                                <p class="description ng-binding"> Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat.  </p>
                                <a class="number ng-binding" href="#"> 4  </a>
                    
                                <a href="" ng-click="cart.addItem(product.code, product.name, product.price, 1)">
                                   <div class="btn btn-cart">Add cart</div>
                                </a>
                                <a class="details-button" href="#/products/CTP">
                                   <div class="btn btn-cart">Details</div>
                                </a>
                                <p class="content_desc ng-binding"> 
                                        £13.00 
                                        <!--{{(product.price | number:2) + "€"}}-->
                                        <span ng-show="cart.getTotalCount(product.code) > 0" class="ng-binding ng-hide"><i class="fa fa-check"></i>0</span>
                                    </p>
                                <div class="clear"></div>
                          </li><!-- end ngRepeat: product in pagedItems[currentPage] --><li class="my-gallery-animation ng-scope" ng-repeat="product in pagedItems[currentPage]">
                                <div class="img-prod"><img ng-src="images/apple5.png" alt="MacBook Airs" src="images/apple5.png"></div>

                                <a class="title ng-binding" href="#/products/FIG"> MacBook Airs  </a>

                                <p class="description ng-binding"> Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat.  </p>
                                <a class="number ng-binding" href="#"> 5  </a>
                    
                                <a href="" ng-click="cart.addItem(product.code, product.name, product.price, 1)">
                                   <div class="btn btn-cart">Add cart</div>
                                </a>
                                <a class="details-button" href="#/products/FIG">
                                   <div class="btn btn-cart">Details</div>
                                </a>
                                <p class="content_desc ng-binding"> 
                                        £750.00 
                                        <!--{{(product.price | number:2) + "€"}}-->
                                        <span ng-show="cart.getTotalCount(product.code) > 0" class="ng-binding ng-hide"><i class="fa fa-check"></i>0</span>
                                    </p>
                                <div class="clear"></div>
                          </li><!-- end ngRepeat: product in pagedItems[currentPage] --><li class="my-gallery-animation ng-scope" ng-repeat="product in pagedItems[currentPage]">
                                <div class="img-prod"><img ng-src="images/apple7.png" alt="Front Office Manager" src="images/apple7.png"></div>

                                <a class="title ng-binding" href="#/products/GRP"> Front Office Manager  </a>

                                <p class="description ng-binding"> Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat.  </p>
                                <a class="number ng-binding" href="#"> 6  </a>
                    
                                <a href="" ng-click="cart.addItem(product.code, product.name, product.price, 1)">
                                   <div class="btn btn-cart">Add cart</div>
                                </a>
                                <a class="details-button" href="#/products/GRP">
                                   <div class="btn btn-cart">Details</div>
                                </a>
                                <p class="content_desc ng-binding"> 
                                        £100.00 
                                        <!--{{(product.price | number:2) + "€"}}-->
                                        <span ng-show="cart.getTotalCount(product.code) > 0" class="ng-binding ng-hide"><i class="fa fa-check"></i>0</span>
                                    </p>
                                <div class="clear"></div>
                          </li><!-- end ngRepeat: product in pagedItems[currentPage] --><li class="my-gallery-animation ng-scope" ng-repeat="product in pagedItems[currentPage]">
                                <div class="img-prod"><img ng-src="images/apple3.png" alt="Interaction Designer" src="images/apple3.png"></div>

                                <a class="title ng-binding" href="#/products/GUA"> Interaction Designer  </a>

                                <p class="description ng-binding"> Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat.  </p>
                                <a class="number ng-binding" href="#"> 7  </a>
                    
                                <a href="" ng-click="cart.addItem(product.code, product.name, product.price, 1)">
                                   <div class="btn btn-cart">Add cart</div>
                                </a>
                                <a class="details-button" href="#/products/GUA">
                                   <div class="btn btn-cart">Details</div>
                                </a>
                                <p class="content_desc ng-binding"> 
                                        £500.00 
                                        <!--{{(product.price | number:2) + "€"}}-->
                                        <span ng-show="cart.getTotalCount(product.code) > 0" class="ng-binding ng-hide"><i class="fa fa-check"></i>0</span>
                                    </p>
                                <div class="clear"></div>
                          </li><!-- end ngRepeat: product in pagedItems[currentPage] --><li class="my-gallery-animation ng-scope" ng-repeat="product in pagedItems[currentPage]">
                                <div class="img-prod"><img ng-src="images/apple4.png" alt="Marketing Manager" src="images/apple4.png"></div>

                                <a class="title ng-binding" href="#/products/KIW"> Marketing Manager  </a>

                                <p class="description ng-binding"> Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat.  </p>
                                <a class="number ng-binding" href="#"> 8  </a>
                    
                                <a href="" ng-click="cart.addItem(product.code, product.name, product.price, 1)">
                                   <div class="btn btn-cart">Add cart</div>
                                </a>
                                <a class="details-button" href="#/products/KIW">
                                   <div class="btn btn-cart">Details</div>
                                </a>
                                <p class="content_desc ng-binding"> 
                                        £167.00 
                                        <!--{{(product.price | number:2) + "€"}}-->
                                        <span ng-show="cart.getTotalCount(product.code) > 0" class="ng-binding ng-hide"><i class="fa fa-check"></i>0</span>
                                    </p>
                                <div class="clear"></div>
                          </li><!-- end ngRepeat: product in pagedItems[currentPage] --><li class="my-gallery-animation ng-scope" ng-repeat="product in pagedItems[currentPage]">
                                <div class="img-prod"><img ng-src="images/apple2.png" alt="Account Manager" src="images/apple2.png"></div>

                                <a class="title ng-binding" href="#/products/ORG"> Account Manager  </a>

                                <p class="description ng-binding"> Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat.  </p>
                                <a class="number ng-binding" href="#"> 9  </a>
                    
                                <a href="" ng-click="cart.addItem(product.code, product.name, product.price, 1)">
                                   <div class="btn btn-cart">Add cart</div>
                                </a>
                                <a class="details-button" href="#/products/ORG">
                                   <div class="btn btn-cart">Details</div>
                                </a>
                                <p class="content_desc ng-binding"> 
                                        £250.00 
                                        <!--{{(product.price | number:2) + "€"}}-->
                                        <span ng-show="cart.getTotalCount(product.code) > 0" class="ng-binding ng-hide"><i class="fa fa-check"></i>0</span>
                                    </p>
                                <div class="clear"></div>
                          </li><!-- end ngRepeat: product in pagedItems[currentPage] --> 
                      </ul>
                      <div class="col-md-12 store-cart-content store-cart-footer">
                       <div class="content-store col-xs-6 col-md-6">
                        <a href="index.html#/cart" title="go to shopping cart" ng-disabled="cart.getTotalCount() < 1" disabled="disabled">
                                        <img src="images/cart_white.png" alt="">
                                        <b class="ng-binding">0</b> items, <b class="ng-binding">$0.00</b>
                                    </a>
                        </div>
                        <div class="col-xs-6 col-md-6 store-down-bottom">
                          <div class="bt-direction">
                             <button class="btn store-pag-button" ng-disabled="currentPage == 0" ng-click="currentPage=currentPage-1" disabled="disabled">
                                Previous
                            </button>
                            <p class="ng-binding">1/2</p>
                            <button class="btn btn-pag-next" ng-disabled="currentPage >= store.products.length/pageSize - 1" ng-click="currentPage=currentPage+1">
                                Next
                            </button>
                           </div>
                        </div>
                    </div>
                </div>
    </form>
  </div>