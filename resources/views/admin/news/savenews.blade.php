@extends('admin.layout')
@section('title')
{{__('messages.Save News')}}
@stop
@section('content')
<div class="breadcrumbs">
   <div class="col-sm-4">
      <div class="page-header float-left">
         <div class="page-title">
            <h1>{{__('messages.Save News')}}</h1>
         </div>
      </div>
   </div>
   <div class="col-sm-8">
      <div class="page-header float-right">
         <div class="page-title">
            <ol class="breadcrumb text-right">
               <li><a href="{{url('admin/department')}}">{{__('messages.News')}}</a></li>
               <li class="active">{{__('messages.Save News')}}</li>
            </ol>
         </div>
      </div>
   </div>
</div>
<div class="content mt-3">
   <div class="animated fadeIn">
      <div class="row rowcenter">
         <div class="col-md-9">
            <div class="card">
               <div class="card-body">
                  @if(Session::has('message'))
                  <div class="col-sm-12">
                     <div class="alert  {{ Session::get('alert-class', 'alert-info') }} alert-dismissible fade show" role="alert">{{ Session::get('message') }}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                     </div>
                  </div>
                  @endif
                  @if ($errors->any())
                  <div class="alert alert-danger">
                     <ul>
                        @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                        @endforeach
                     </ul>
                  </div>
                  @endif
                  <form action="{{url('admin/updatenews')}}" method="post" novalidate="novalidate" enctype="multipart/form-data">
                     @csrf
                     <input type="hidden" name="id" id="id" value="{{$news_id}}"/>
                     <input type="hidden" name="featured_image" id="featured_image" value="{{ isset($data->featured_image)?$data->featured_image:''}}"/>
                     <div class="form-group">
                        <label for="name" class=" form-control-label">
                        {{__('messages.Title')}}
                        <span class="reqfield">*</span>
                        </label>
                        <input type="text" id="title" placeholder="{{__('messages.Enter').' '.__('messages.News Title')}}" class="form-control" required name="title" value="{{ isset($data->title)?$data->title:''}}">
                     </div>
                     <div class="form-group" >
                        <label for="news_categories" class=" form-control-label">
                        {{__('messages.Select News_Categories')}}
                        <span class="reqfield" >*</span>
                        </label>
                        <select id="news_categories" name="news_categories" required class="form-control">
                           <option value="">{{__('messages.Select News_Categories')}}</option>
                           @foreach($news_categories as $n)
                           <option value="{{$n->id}}" <?= isset($data->news_categories_id) && $data->news_categories_id == $n->id ? "selected='selected'" : "" ?> >{{$n->name}}</option>
                           @endforeach
                        </select>
                     </div>
                     <div class="form-group">
                        <label for="name" class=" form-control-label">
                        {{__('messages.Meta Description')}}
                        <span class="reqfield" >*</span>
                        </label>
                        <input type="text" id="meta_description" placeholder="{{__('messages.Enter').' '.__('messages.Meta Description')}}" class="form-control" required name="meta_description" value="{{ isset($data->meta_description)?$data->meta_description:''}}">
                     </div>

                     <div class="form-group">
                        <label for="name" class=" form-control-label">
                        {{__('messages.Meta Tags')}}
                        <span class="reqfield" >*</span>
                        </label>
                        <input type="text" id="meta_tags" placeholder="{{__('messages.Enter').' '.__('messages.Meta Tags')}}" class="form-control" required name="meta_tags" value="{{ isset($data->meta_tags)?$data->meta_tags:''}}">
                     </div>

                     <div class="form-group">
                        <label for="name" class=" form-control-label">
                        {{__('messages.Excerpt')}}
                        <span class="reqfield" >*</span>
                        </label>
                        <input type="text" id="excerpt" placeholder="{{__('messages.Enter').' '.__('messages.Excerpt')}}" class="form-control" required name="excerpt" value="{{ isset($data->excerpt)?$data->excerpt:''}}">
                     </div>

                     <div class="form-group">
                        <label for="name" class=" form-control-label">
                        {{__('messages.Content')}}
                        <span class="reqfield" >*</span>
                        </label>
                        <input type="text" id="contents" placeholder="{{__('messages.Enter').' '.__('messages.Content')}}" class="form-control" required name="contents" value="{{ isset($data->contents)?$data->contents:''}}">
                     </div>

                     <div class="form-group">
                        <label for="name" class=" form-control-label">
                        {{__('messages.Tags')}}
                        <span class="reqfield" >*</span>
                        </label>
                        <input type="text" id="tags" placeholder="{{__('messages.Enter').' '.__('messages.Tags')}}" class="form-control" required name="tags" value="{{ isset($data->tags)?$data->tags:''}}">
                     </div>
                     <div class="form-group">
                        <label for="file" class=" form-control-label">
                        {{__('messages.Image')}}<span class="reqfield" >*</span>
                        </label>
                        @if($news_id!=0)
                        <img src="{{asset('upload/news').'/'.$data->featured_image}}"  class="imgsize1 departmentimg"/>
                        @endif
                        <div>
                           <input type="file" id="file" name="featured_image" class="form-control-file" accept="image/*">
                        </div>
                     </div>
                     <div class="form-group">
                        <label for="name" class=" form-control-label">
                        {{__('Status')}}
                        <span class="reqfield" >*</span>
                        </label>
                        <select name="status" id="status" class="form-control">
                            <option value="publish" {{old('status' == "publish" ? 'selected' : '')}} @if($data->status == 'publish') selected @endif>{{__('Publish')}}</option>
                            <option value="draft"   {{old('status' == "draft" ? 'selected' : '')}} @if($data->status == 'draft') selected @endif>{{__('Draft')}}</option>
                        </select>
                    </div>
                     <div>
                        {{-- @if(Session::get("is_demo")=='1')
                           <button id="payment-button" type="button"  onclick="disablebtn()" class="btn btn-lg btn-info" >
                              {{__('messages.Submit')}}
                              </button>
                        @else --}}
                            <button id="payment-button" type="submit" class="btn btn-lg btn-info" >
                              {{__('messages.Submit')}}
                              </button>
                        {{-- @endif --}}

                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

@stop
