@extends('admin.layout')
@section('title')
{{__('messages.News')}}
@stop
@section('content')
<div class="breadcrumbs">
   <div class="col-sm-4">
      <div class="page-header float-left">
         <div class="page-title">
            <h1>{{__('messages.news')}}</h1>
         </div>
      </div>
   </div>
   <div class="col-sm-8">
      <div class="page-header float-right">
         <div class="page-title">
            <ol class="breadcrumb text-right">
               <li class="active">{{__('messages.news')}}</li>
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
                        <a href="{{url('admin/saveNews/0')}}" class="btn btn-primary">{{__('messages.Add').' '.__('messages.news')}}</a>
                    </div>
                    <div class="col-lg-3" style="margin-left: -15px; display: flex; flex-direction: column;">
                        <label for="filter" style="margin-bottom: 5px;">Select Category</label>
                        <select id="categoryFilter" style="width: 100%; max-width: 9.8rem; height: 2rem; border-radius: 0.2rem; border-color: #ced4da; font-size: 75%; padding-left: 7px;">
                            <option value="" >Select Option</option>
                            @foreach ($categories as $c)
                                <option value="{{ $c->id }}">{{ $c->name }}</option>
                            @endforeach
                        </select>
                    </div>

                    <div class="table-responsive">
                  <table id="service" class="table  table-striped table-bordered">
                     <thead>
                        <tr>
                           <th>{{__('messages.Id')}}</th>
                           <th>{{__('messages.title')}}</th>
                           <th>{{__('messages.Image')}}</th>
                           <th>{{__('messages.content')}}</th>
                           <th>{{__('messages.Status')}}</th>
                           <th>{{__('messages.Action')}}</th>
                        </tr>
                     </thead>
                     <tbody>

                        @if(count($all_news)>0)
                        @foreach($all_news as $d)
                        <tr>
                           <td>{{isset($d->id)?$d->id:""}}</td>
                           <td>{{isset($d->title)?$d->title:""}}</td>
                           <td style="height: 150px; width: 150px;">
                               <img src="{{asset('upload/news').'/'.$d->featured_image}}" class="imgsize1"/>
                           </td>
                           <td>{!! $d->contents !!}</td>
                           <td>{{isset($d->status)?$d->status:""}}</td>
                           <td>
                                <a href="{{url('admin/saveNews/').'/'.$d->id}}" class="btn btn-primary">{{__('messages.Edit')}}</a>
                                {{-- <a href="{{url('admin/deletedenews/').'/'.$d->id}}" class="btn btn-danger">{{__('messages.Delete')}}</a> --}}
                                <a class="btn btn-danger" style="color: white;" data-toggle="modal" data-target="#deleteConfirmationModal" data-news-name="{{ $d->name }}" data-news-id="{{ $d->id }}">{{__('messages.Delete')}}</a>
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
                <h5 class="modal-title" id="deleteConfirmationModalLabel">Confirmation</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Are you sure you want to delete this Blog?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <a href="{{ url('admin/deletedenews/') }}/{{ $d->id }}" class="btn btn-danger">Delete</a>
            </div>
        </div>
    </div>
</div>




@endsection
@section('footer')
<script>
    $('#deleteConfirmationModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget);
        var departmentName = button.data('news-name');
        var modal = $(this);
        modal.find('.modal-body').html("Are you sure you want to delete " + departmentName + "?");
    });
</script>
<script>

    $('#categoryFilter').on('input', function() {
        var category = $('#categoryFilter').val();
        console.log(category);
        $.ajax
        ({
            url: "{{ route('category-filter') }}",
            type: "GET",
            data:
            {
                category: category,
            },
            success: function(data)
            {
                $('#service tbody').empty();
                console.log(data);

// Loop through the filtered data and append rows to the table
$.each(data, function (index, news) {
    var row = '<tr>' +
        '<td>' + news.id + '</td>' +
        '<td>' + news.title + '</td>' +
        '<td style="height: 150px; width: 150px;">' +
            '<img src="{{ asset("upload/news") }}/' + news.featured_image + '" class="imgsize1"/>' +
        '</td>' +
        '<td>' + news.contents + '</td>' +
        '<td>' + news.status + '</td>' +
        '<td>' +
            '<a href="{{ url("admin/saveNews") }}/' + news.id + '" class="btn btn-primary">Edit</a>' +
            '<a class="btn btn-danger" style="color: white;" data-toggle="modal" data-target="#deleteConfirmationModal" data-news-name="' + news.name + '" data-news-id="' + news.id + '">Delete</a>' +
        '</td>' +
        '</tr>';

    $('#service tbody').append(row);
});
            }
        });
    });
</script>
@endsection

