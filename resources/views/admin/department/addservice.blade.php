@extends('admin.layout')
@section('title')
    @if ($id == 0)
        {{ __('messages.Create').' '.__('messages.Department Service') }}
    @else
        {{ __('messages.Update').' '.__('messages.Department Service') }}
    @endif
@endsection
@section('content')
<div class="breadcrumbs">
   <div class="col-sm-4">
      <div class="page-header float-left">
         <div class="page-title">
            <h1>{{__('messages.Save Department Service')}}</h1>
         </div>
      </div>
   </div>
   <div class="col-sm-8">
      <div class="page-header float-right">
         <div class="page-title">
            <ol class="breadcrumb text-right">
               <li><a href="{{url('admin/department')}}">{{__('messages.Department')}}</a></li>
               <li><a href="{{url('admin/departmentservice').'/'.$departmentservice}}">{{__('messages.Department Service')}}</a></li>
               <li class="active">{{__('messages.Save Department Service')}}</li>
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
                  <form action="{{url('admin/updatedepartmentservice')}}" method="post" novalidate="novalidate" enctype="multipart/form-data">
                     {{csrf_field()}}
                     <input type="hidden" name="depart_id" id="depart_id" value="{{$departmentservice}}"/>
                     <input type="hidden" name="id" id="id" value="{{$id}}"/>
                     <div class="form-group">
                        <label for="name" class=" form-control-label">
                        {{__('messages.Name')}}
                        <span class="reqfield">*</span>
                        </label>
                        <input type="text" id="name" placeholder="{{__('messages.Enter').'  '.__('messages.Name')}}" class="form-control" required name="name" value="{{ isset($data->name)?$data->name:''}}">
                     </div>
                     <div class="form-group">
                        <label for="name" class=" form-control-label">
                        {{__('messages.Description')}}
                        <span class="reqfield">*</span>
                        </label>
                        <textarea class="form-control" name="description" id="description"><?= isset($data->description)?$data->description:""?></textarea>
                     </div>
                     <div>

                         {{-- @if(Config::get("democheck.vdemo")=='1')
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
<script>
    CKEDITOR.replace('description');
    CKEDITOR
</script>
@endsection
