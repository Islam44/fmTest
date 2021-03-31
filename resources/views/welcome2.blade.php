<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <link href="{{asset('dist/bootree.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/3.4.0/paper/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style>
        body { background-color: #fafafa; }
        .container { margin: 150px auto; }
    </style>
</head>
<body>
<div class="container">
    <input  hidden id="res" name="res" value="{{$res}}">
    <div id="tree">
    </div>
</div>
<div class="row">
    <button id="btnSave" class="btn btn-primary">Manage Permission</button>
</div>
</div>
<script src="{{asset('jquery-3.3.1.min.js')}}"></script>
<script src="{{asset('dist/bootree.min.js')}}" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        console.log(JSON.parse($('#res').val()))
        // const myData = [{
        //     text: 'Apple',
        //     children: [{
        //         text: 'Avocado',
        //     }]
        // },{
        //     text: 'Banana',
        //     children: [{
        //         text: 'Beans'
        //     },{
        //
        //         text: 'Broccoli',
        //         children: [{
        //
        //             text: 'Bunch Grape',
        //             children: [{
        //                 text: 'Bunch Grape'
        //             }]
        //         }]
        //     }]
        // }]
        const myData=JSON.parse($('#res').val());
        var tree = $('#tree').tree({
            primaryKey: 'path',
            uiLibrary: 'bootstrap',
            dataSource: myData,
            checkboxes: true
        });
        $('#btnSave').on('click', function () {
            var checkedIds = tree.getCheckedNodes();
            //send request here
            console.log(checkedIds);
        });

    });
    function getData(el) {
        var mylist = [];
        var id=1;

        $("ul.nameList > li").each(function () {
            mylist.push({
                "id": id++,
                "text": $(this).text()
            });
        })

// // then you can simply pass it to the post method
//                 $.post("myhandler.php", {list:mylist}, function (data) {
//                     // here you go!
//                 })


// for result only
//                 $("#tree").html(JSON.stringify(mylist))
//         console.log(JSON.stringify(mylist))
    }

    function FetchChild(){
        var data =[];
        $('#side-menu > li').each(function(){
            data.push(buildJSON($(this)));
        });

        return data;
    }
    function buildJSON($li) {
        var subObj = {
            "name": $li.contents().eq(0).text().trim() || $li.find('[class="nav-label"]').text().trim(),
            "icon": $li.find('i').attr('class'),
            "to": $li.find('a').attr('href')
        };
        $li.children('ul').children().each(function() {
            if (!subObj.children) {
                subObj.children = [];
            }
            subObj.children.push(buildJSON($(this)));
        });
        return subObj;
    }
    var obj = FetchChild();
    $('#side-menu').append('<pre>').find('pre').append(JSON.stringify(obj, null, 2));
    window.addEventListener("load", function(){


    });
</script>
</body>
</html>
