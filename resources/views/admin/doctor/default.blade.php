@extends('admin.layout')
@section('title')
{{__('messages.Doctors')}}
@stop
@section('content')
<div class="breadcrumbs">
   <div class="col-sm-4">
      <div class="page-header float-left">
         <div class="page-title">
            <h1>{{__('messages.Doctors')}}</h1>
         </div>
      </div>
   </div>
   <div class="col-sm-8">
      <div class="page-header float-right">
         <div class="page-title">
            <ol class="breadcrumb text-right">
               <li class="active">{{__('messages.Doctors')}}</li>
            </ol>
         </div>
      </div>
   </div>
</div>
<div class="content mt-3">
   <div class="animated fadeIn">
      <div class="row">
         <div class="col-md-12">
            <div class="card">
               <div class="card-body">
                  @if(Session::get("message"))
                  <div class="sufee-alert alert with-close alert-success alert-dismissible fade show">
                     {{Session::get("message")}}
                     <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                     <span aria-hidden="true">×</span>
                     </button>
                  </div>
                  @endif
                  <div>
                     <a href="{{url('admin/savedoctor/0/1')}}" class="btn btn-primary">{{__('messages.Add').' '.__('messages.Doctors')}}</a>
                  </div>
                  <div class="table-responsive">
                    <table id="service" class="table  table-striped table-bordered">
                     <thead>
                        <tr>
                           <th>{{__('messages.Id')}}</th>
                           <th>{{__('messages.Image')}}</th>
                           <th>{{__('messages.Department')}}</th>
                           <th>{{__('messages.Name')}}</th>
                           <th>{{__('messages.Email')}}</th>
                           <th>{{__('messages.Phone No')}}</th>
                           <th>{{__('messages.Action')}}</th>
                        </tr>
                     </thead>
                     <tbody>
                        @if(count($data)>0)
                        @foreach($data as $d)
                        <tr>
                           <td>{{isset($d->id)?$d->id:""}}</td>
                           <td>
                                <img src="{{asset('upload/doctor').'/'.$d->image}}" class="imgsize1" style="width: 150px;"/>
                           </td>
                           <td>{{$d->department->name}}</td>
                           <td>{{$d->name}}</td>
                           <td>{{$d->email}}</td>
                           <td>{{$d->phone_no}}</td>
                           <td>
                              <a href="{{url('admin/savedoctor/').'/'.$d->id.'/1'}}" class="btn btn-primary">{{__('messages.Edit')}}</a>
                              {{-- <a href="{{url('admin/deletedoctor').'/'.$d->id}}" class="btn btn-danger">{{__('messages.Delete')}}</a> --}}
                              <a class="btn btn-danger" style="color: white;" data-toggle="modal" data-target="#deleteConfirmationModal" data-doctor-name="{{ $d->name }}" data-doctor-id="{{ $d->id }}">{{__('messages.Delete')}}</a>
                            </td>
                        </tr>
                        @endforeach
                        @endif
                     </tbody>
                  </table>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

<div class="modal fade" id="deleteConfirmationModal" tabindex="-1" role="dialog" aria-labelledby="deleteConfirmationModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="deleteConfirmationModalLabel">Delete Doctor</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Are you sure you want to delete this Doctor?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <a href="{{ url('admin/deletedoctor') }}/{{ $d->id }}" class="btn btn-danger">Delete</a>
            </div>
        </div>
    </div>
</div>



@endsection
@section('footer')
<script>
    $('#deleteConfirmationModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget);
        var departmentName = button.data('doctor-name');
        var modal = $(this);
        modal.find('.modal-body').html("Are you sure you want to delete " + departmentName + "?");
    });
</script>
@endsection
