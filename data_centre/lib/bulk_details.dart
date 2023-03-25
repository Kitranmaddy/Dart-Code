import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pluto_grid/pluto_grid.dart';

class InventoryDetails extends StatefulWidget {
  InventoryDetails({Key? key}) : super(key: key);

  @override
  State<InventoryDetails> createState() => _BulkDetailsState();
}

class _BulkDetailsState extends State<InventoryDetails> {
  String radio ='item';

  String selectedValue = 'Item1';

  final _selectedSupplier = ValueNotifier<String>('Supplier');

  @override
  Widget build(BuildContext context) {
    PlutoGridOnChangedEvent? stateManager;
    List<PlutoColumn> columns = [
      PlutoColumn(
        title: 'SL.No',
        field: 'sl.no',
        type: PlutoColumnType.number(),
      ),
      PlutoColumn(
        title: 'Name',
        field: 'name',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Code',
        field: 'code',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Stock',
        field: 'stock',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'P - Price',
        field: 'p-price',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Sale - Price',
        field: 'sale-price',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Percentage',
        field: 'percentage',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Cost',
        field: 'cost',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Div\ Category',
        field: 'div_category',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Product',
        field: 'product',
        type: PlutoColumnType.text(),
      ),
      PlutoColumn(
        title: 'Brand',
        field: 'brand',
        type: PlutoColumnType.text(),
      ),
    ];
    List<PlutoRow> rows = [
      PlutoRow(
        cells: {
          'sl.no': PlutoCell(value: '1'),
          'name': PlutoCell(value: ''),
          'code': PlutoCell(value: ''),
          'stock': PlutoCell(value: ''),
          'p-price': PlutoCell(value: ''),
          'sale-price': PlutoCell(value: ''),
          'percentage': PlutoCell(value: ''),
          'cost': PlutoCell(value: ''),
          'div_category': PlutoCell(value: ''),
          'product': PlutoCell(value: ''),
          'brand': PlutoCell(value: ''),
        },
      ),
      PlutoRow(
        cells: {
          'sl.no': PlutoCell(value: '2'),
          'name': PlutoCell(value: ''),
          'code': PlutoCell(value: ''),
          'stock': PlutoCell(value: ''),
          'p-price': PlutoCell(value: ''),
          'sale-price': PlutoCell(value: ''),
          'percentage': PlutoCell(value: ''),
          'cost': PlutoCell(value: ''),
          'div_category': PlutoCell(value: ''),
          'product': PlutoCell(value: ''),
          'brand': PlutoCell(value: ''),
        },
      ),
      PlutoRow(
        cells: {
          'sl.no': PlutoCell(value: '3'),
          'name': PlutoCell(value: ''),
          'code': PlutoCell(value: ''),
          'stock': PlutoCell(value: ''),
          'p-price': PlutoCell(value: ''),
          'sale-price': PlutoCell(value: ''),
          'percentage': PlutoCell(value: ''),
          'cost': PlutoCell(value: ''),
          'div_category': PlutoCell(value: ''),
          'product': PlutoCell(value: ''),
          'brand': PlutoCell(value: ''),
        },
      ),
      PlutoRow(
        cells: {
          'sl.no': PlutoCell(value: '4'),
          'name': PlutoCell(value: ''),
          'code': PlutoCell(value: ''),
          'stock': PlutoCell(value: ''),
          'p-price': PlutoCell(value: ''),
          'sale-price': PlutoCell(value: ''),
          'percentage': PlutoCell(value: ''),
          'cost': PlutoCell(value: ''),
          'div_category': PlutoCell(value: ''),
          'product': PlutoCell(value: ''),
          'brand': PlutoCell(value: ''),
        },
      ),
      PlutoRow(
        cells: {
          'sl.no': PlutoCell(value: '5'),
          'name': PlutoCell(value: ''),
          'code': PlutoCell(value: ''),
          'stock': PlutoCell(value: ''),
          'p-price': PlutoCell(value: ''),
          'sale-price': PlutoCell(value: ''),
          'percentage': PlutoCell(value: ''),
          'cost': PlutoCell(value: ''),
          'div_category': PlutoCell(value: ''),
          'product': PlutoCell(value: ''),
          'brand': PlutoCell(value: ''),
        },
      ),
      PlutoRow(
        cells: {
          'sl.no': PlutoCell(value: '6'),
          'name': PlutoCell(value: ''),
          'code': PlutoCell(value: ''),
          'stock': PlutoCell(value: ''),
          'p-price': PlutoCell(value: ''),
          'sale-price': PlutoCell(value: ''),
          'percentage': PlutoCell(value: ''),
          'cost': PlutoCell(value: ''),
          'div_category': PlutoCell(value: ''),
          'product': PlutoCell(value: ''),
          'brand': PlutoCell(value: ''),
        },
      ),
    ];

    List<PlutoColumnGroup> columnGroups = [
      PlutoColumnGroup(
        title: 'SL.No',
        fields: ['sl.no'],
      ),
      PlutoColumnGroup(title: 'Name', fields: [
        'name',
      ]),
      PlutoColumnGroup(title: 'Code', fields: [
        'code',
      ]),
      PlutoColumnGroup(title: 'Stock', fields: [
        'stock',
      ]),
      PlutoColumnGroup(title: 'P-Price', fields: [
        'p-price',
      ]),
      PlutoColumnGroup(title: 'Sale - Price', fields: [
        'sale-price',
      ]),
      PlutoColumnGroup(title: 'Percentage', fields: [
        'percentage',
      ]),
      PlutoColumnGroup(title: 'Cost', fields: [
        'cost',
      ]),
      PlutoColumnGroup(title: 'Div/Category', fields: [
        'div_category',
      ]),
      PlutoColumnGroup(title: 'Product', fields: [
        'product',
      ]),
      PlutoColumnGroup(title: 'Brand', fields: [
        'brand',
      ]),
    ];
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    'Bulk Edit Item Details',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            )    ,
            SizedBox(
              height: 30,
            ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:10),
                    child: Row(
                      children: [
                        Text(
                          'Category',
                          // style: GoogleFonts.roboto(
                          //   fontSize: 12,
                          //   fontWeight: FontWeight.bold,
                          // ),
                        ),
                        SizedBox(width:10),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 28,
                            width: 175,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton2<String>(
                                value: _selectedSupplier.value,
                                onChanged: (value) {
                                  _selectedSupplier.value = value!;
                                },
                                items: const [
                                  DropdownMenuItem(
                                    value: 'Supplier',
                                    child: Text(''),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:5,),
                  Padding(
                    padding: const EdgeInsets.only(left:10),
                    child: Row(
                      children: [
                        Text(
                          'Section',
                          // style: GoogleFonts.roboto(
                          //   fontSize: 12,
                          //   fontWeight: FontWeight.bold,
                          // ),
                        ),
                        SizedBox(width:19),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 28,
                            width: 175,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton2<String>(
                                value: _selectedSupplier.value,
                                onChanged: (value) {
                                  _selectedSupplier.value = value!;
                                },
                                items: const [
                                  DropdownMenuItem(
                                    value: 'Supplier',
                                    child: Text(''),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )],
                        ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left:10),
                    child: Row(
                      children: [
                        Text(
                          'Product',
                          // style: GoogleFonts.roboto(
                          //   fontSize: 12,
                          //   fontWeight: FontWeight.bold,
                          // ),
                        ),
                        SizedBox(width:17),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 28,
                            width: 175,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton2<String>(
                                value: _selectedSupplier.value,
                                onChanged: (value) {
                                  _selectedSupplier.value = value!;
                                },
                                items: const [
                                  DropdownMenuItem(
                                    value: 'Supplier',
                                    child: Text(''),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left:10),
                    child: Row(
                      children: [
                        Text(
                          'Brand',
                          // style: GoogleFonts.roboto(
                          //   fontSize: 12,
                          //   fontWeight: FontWeight.bold,
                          // ),
                        ),
                        SizedBox(width:28),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 28,
                            width: 175,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton2<String>(
                                value: _selectedSupplier.value,
                                onChanged: (value) {
                                  _selectedSupplier.value = value!;
                                },
                                items: const [
                                  DropdownMenuItem(
                                    value: 'Supplier',
                                    child: Text(''),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left:10),
                    child: Row(
                      children: [
                      Text(
                      'Part/Mdl',
                      // style: GoogleFonts.roboto(
                      //     fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      // height: 25,
                      width: 182,
                      child: const Padding(
                        padding: EdgeInsets.only(left:8),
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(width: 15,),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:10),
                    child: Row(
                      children: [
                        Text(
                          'Supplier',
                          // style: GoogleFonts.roboto(
                          //   fontSize: 12,
                          //   fontWeight: FontWeight.bold,
                          // ),
                        ),
                        SizedBox(width:10),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 28,
                            width: 175,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton2<String>(
                                value: _selectedSupplier.value,
                                onChanged: (value) {
                                  _selectedSupplier.value = value!;
                                },
                                items: const [
                                  DropdownMenuItem(
                                    value: 'Supplier',
                                    child: Text(''),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:5,),
                  Padding(
                    padding: const EdgeInsets.only(left:10),
                    child: Row(
                      children: [
                        Text(
                          'Item Code',
                          // style: GoogleFonts.roboto(
                          //     fontSize: 12, fontWeight: FontWeight.bold),
                        ),

                        Container(
                          // height: 25,
                          width: 182,
                          child: const Padding(
                            padding: EdgeInsets.only(left:8),
                            child: TextField(
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left:10),
                    child:  Row(
                      children: [
                        Text(
                          'Name',
                          // style: GoogleFonts.roboto(
                          //     fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Container(
                          // height: 25,
                          width: 182,
                          child: const Padding(
                            padding: EdgeInsets.only(left:8),
                            child: TextField(
                              decoration: InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left:10),
                    child: Row(
                      children: [
                      Text(
                      'Tax Code',
                      // style: GoogleFonts.roboto(
                      //     fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      // height: 25,
                      width: 182,
                      child: const Padding(
                        padding: EdgeInsets.only(left:8),
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 5),
                            border: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left:10),
                    child: Row(
                      children: [
                        Text(
                          'Item Style',
                          // style: GoogleFonts.roboto(
                          //   fontSize: 12,
                          //   fontWeight: FontWeight.bold,
                          // ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 28,
                            width: 175,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton2<String>(
                                value: _selectedSupplier.value,
                                onChanged: (value) {
                                  _selectedSupplier.value = value!;
                                },
                                items: const [
                                  DropdownMenuItem(
                                    value: 'Supplier',
                                    child: Text(''),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )],
                    ),
                  ),
                ],
              ),
              SizedBox(width: 15,),
              Padding(
                padding: const EdgeInsets.only(bottom:12),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:190),
                      child: Row(
                        children: [
                          Text(
                            'Fields',
                            // style: GoogleFonts.roboto(
                            //   fontSize: 12,
                            //   fontWeight: FontWeight.bold,
                            // ),
                          ),
                          SizedBox(width:10),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 28,
                              width: 175,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton2<String>(
                                  value: _selectedSupplier.value,
                                  onChanged: (value) {
                                    _selectedSupplier.value = value!;
                                  },
                                  items: const [
                                    DropdownMenuItem(
                                      value: 'Supplier',
                                      child: Text(''),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right:190),
                      child: Row(
                        children: [
                          Text(
                            'Replace\nFields',
                            // style: GoogleFonts.roboto(
                            //   fontSize: 12,
                            //   fontWeight: FontWeight.bold,
                            // ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 28,
                              width: 175,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton2<String>(
                                  value: _selectedSupplier.value,
                                  onChanged: (value) {
                                    _selectedSupplier.value = value!;
                                  },
                                  items: const [
                                    DropdownMenuItem(
                                      value: 'Supplier',
                                      child: Text(''),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right:43),
                      child: Row(
                        children: [
                          Text(
                            'Replace Field Value',
                            // style: GoogleFonts.roboto(
                            //   fontSize: 12,
                            //   fontWeight: FontWeight.bold,
                            // ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            // height: 35,
                            width: 250,
                            child: const Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: TextField(
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: 'Text',
                                  hintStyle: TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                                  focusedBorder: OutlineInputBorder(),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right:50),
                      child: Row(
                         children: [
                           FilledButton(
                             onPressed: () {},
                             child: Text(
                               'Add Fields',
                               // style: GoogleFonts.roboto(
                               //   fontSize: 15,
                               //   fontWeight: FontWeight.bold,
                               //
                               // ),
                             ),
                           ),
                           SizedBox(width: 15,),
                           Radio(
                               value: 'Item Details',
                               groupValue: radio,
                               onChanged: (value) {
                                 setState(() {
                                   radio = value.toString();
                                 });
                               }),
                           const SizedBox(
                             width: 10,
                           ),
                           Text(
                             'Item Details',
                             // style: GoogleFonts.roboto(
                             //   fontWeight: FontWeight.bold,
                             // ),
                           ),
                           SizedBox(width: 10,),
                           Radio(
                               value: 'Barcode Details',
                               groupValue: radio,
                               onChanged: (value) {
                                 setState(() {
                                   radio = value.toString();
                                 });
                               }),
                           const SizedBox(
                             width: 10,
                           ),
                           Text(
                             'Barcode Details',
                             // style: GoogleFonts.roboto(
                             //   fontWeight: FontWeight.bold,
                             // ),
                           ),
                         ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left:15),
          child: Expanded(
            child: Container(
              height: 200,
              width: 1500,
              child: PlutoGrid(
                columns: columns,
                rows: rows,
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left:15),
          child: Row(
            children: [
              FilledButton(
                  onPressed: () {},
                  child: Text(
                    'Save'
                  )),
              SizedBox(width: 10,),
              FilledButton(
                  onPressed: () {},
                  child: Text(
                      'Replace All'
                  )),
              SizedBox(width: 10,),
              FilledButton(
                  onPressed: () {},
                  child: Text(
                      'Create'
                  )),
            ],
          ),
        ),
      ],
    ));
  }
}
