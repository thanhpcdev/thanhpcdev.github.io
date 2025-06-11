<?php
    require_once(__DIR__."/config/config.php");
    require_once(__DIR__."/config/function.php");
    $title = 'HOME | '.$NHNTAK->site('mota');
    require_once(__DIR__."/public/client/Header.php");
    CheckLogin();
?>
<?php $tenmien = format_cash($NHNTAK->num_rows("SELECT * FROM hisdomain WHERE username = '".$getUser['username']."' AND status = 'thanhcong'"));  ?>
<?php $shop = format_cash($NHNTAK->num_rows("SELECT * FROM history_shop WHERE username = '".$getUser['username']."' AND status = 'thanhcong'"));  ?>
<body class="main">
    <?php require_once(__DIR__."/public/client/Sidebar.php");?>
    <?php require_once(__DIR__."/public/client/Navbar.php");?>
    <div class="wrapper">
        <div class="wrapper-box">
            <?php require_once(__DIR__."/public/client/SidebarPc.php");?>
            <div class="content">
                <div class="grid grid-cols-12 gap-6">
                    <div class="col-span-12 2xl:col-span-9">
                        <div class="grid grid-cols-12 gap-6">
                            <div class="col-span-12 mt-8">
                                <div class="intro-y flex items-center h-10">
                                    <h2 class="text-lg font-medium truncate mr-5">
                                    Thống Kê
                                    </h2>
                                    <a href="" class="ml-auto flex items-center text-theme-26 dark:text-theme-33"> <i
                                            data-feather="refresh-ccw" class="w-4 h-4 mr-3"></i> Tải lại trang </a>
                                </div>
                                <div class="grid grid-cols-12 gap-6 mt-5">
                                    <div class="col-span-12 sm:col-span-6 xl:col-span-3 intro-y">
                                        <div class="report-box zoom-in">
                                            <div class="box p-5">
                                                <div class="flex">
                                                <i data-feather="credit-card" class="report-box__icon text-pending"></i> 
                                                    <div class="ml-auto">
                                                    </div>
                                                </div>
                                                <div class="text-3xl font-medium leading-8 mt-6">
                                                <?=format_cash($getUser['money']);?>đ
                                                </div>
                                                <div class="text-base text-gray-600 mt-1">Số dư</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-span-12 sm:col-span-6 xl:col-span-3 intro-y">
                                        <div class="report-box zoom-in">
                                            <div class="box p-5">
                                                <div class="flex">
                                                <i data-feather="user" class="report-box__icon text-success"></i> 
                                                    <div class="ml-auto">
                                                    </div>
                                                </div>
                                                <div class="text-3xl font-medium leading-8 mt-6">
                                                <?=display_level($getUser['level']);?>
                                                </div>
                                                <div class="text-base text-gray-600 mt-1">Chức Vụ</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-span-12 sm:col-span-6 xl:col-span-3 intro-y">
                                        <div class="report-box zoom-in">
                                            <div class="box p-5">
                                                <div class="flex">
                                                <i data-feather="shopping-cart" class="report-box__icon text-primary"></i> 
                                                    <div class="ml-auto">
                                                    </div>
                                                </div>
                                                <div class="text-3xl font-medium leading-8 mt-6">
                                                <?=format_cash($shop);?>
                                                </div>
                                                <div class="text-base text-gray-600 mt-1">Shop đã tạo thành công</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-span-12 sm:col-span-6 xl:col-span-3 intro-y">
                                        <div class="report-box zoom-in">
                                            <div class="box p-5">
                                                <div class="flex">
                                                <i data-feather="inbox" class="report-box__icon text-primary"></i> 
                                                    <div class="ml-auto">
                                                    </div>
                                                </div>
                                                <div class="text-3xl font-medium leading-8 mt-6">
                                                <?=format_cash($tenmien);?>
                                                </div>
                                                <div class="text-base text-gray-600 mt-1">Domain đã mua thành công</div>
                                            </div>
                                        </div>
                                    </div>
                            <!-- BEGIN: Ads 1 -->
                            <div class="col-span-12 lg:col-span-6 mt-6">
                                <div class="ads-box box p-8 relative overflow-hidden bg-theme-17 intro-y">
                                    <div class="ads-box__title w-full sm:w-72 text-white text-xl -mt-3">Thời gian hỗ trợ System</div>
                                    <div
                                        class="w-full sm:w-82 leading-relaxed text-white text-opacity-70 dark:text-gray-600 dark:text-opacity-100 mt-3">
                                        Phục vụ bạn Từ 9:00 - 19:00 Thứ 2 - Thứ 7. (Không tính lễ -tết)</div>

                                    <a class="btn w-42 bg-white dark:bg-dark-2 dark:text-white mt-6 sm:mt-10" href="<?=$NHNTAK->site('zalo');?>">
                                        <i data-feather="corner-down-left" class="w-4 h-4 mr-2"></i>Liên hệ ngay</a>
                                    <img class="hidden sm:block absolute top-0 right-0 w-2/5 -mt-3 mr-2"
                                        alt="code được iết lại bởi NDK Dark"
                                        src="https://api.dichvudark.vn/template/dist/images/woman-illustration.svg">
                                </div>
                            </div>
                            <!-- END: Ads 1 -->

                            <!-- BEGIN: Ads 2 -->
                            <div class="col-span-12 lg:col-span-6 mt-6">
                                <div class="ads-box box p-8 relative overflow-hidden intro-y">
                                    <div
                                        class="ads-box__title w-full sm:w-72 text-theme-17 dark:text-white text-xl -mt-3">
                                        Giới thiệu bạn bè Nhận tiền mặt!</div>
                                    <div class="w-full sm:w-60 leading-relaxed text-light-600 mt-2">Người được giới thiệu nạp số dư trên 100.000đ bạn sẽ nhận ngay 10.000đ</div>
                                        <div class="w-48 relative mt-6 cursor-pointer tooltip" title="Copy referral link">
                                            <input class="form-control" value="<?='https://'.$_SERVER['SERVER_NAME'].'';?>">
                                            <i data-feather="copy" class="absolute right-0 top-0 bottom-0 my-auto mr-4 w-4 h-4"></i> 
                                        </div>
                                        <img class="hidden sm:block absolute top-0 right-0 w-1/2 mt-1 -mr-12" alt="code được iết lại bởi NDK Dark" src="https://api.dichvudark.vn/template/dist/images/phone-illustration.svg">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                                <!-- END: Ads 2 -->

                    <!-- END: thongtin -->
                    <div class="col-span-12 2xl:col-span-3">
                        <div class="2xl:border-l border-theme-25 -mb-10 pb-10">
                            <div class="2xl:pl-6 grid grid-cols-12 gap-6">
                                <!-- BEGIN: Important Notes -->
                                <div class="col-span-12 md:col-span-6 xl:col-span-12 mt-3 2xl:mt-8">
                                    <div class="intro-x flex items-center h-10">
                                        <h2 class="text-lg font-medium truncate mr-auto">
                                            Thông báo
                                        </h2>
 
                                    </div>
                                    <div class="mt-5 intro-x">
                                        <div class="box zoom-in">
                                            <div class="tiny-slider" id="important-notes">
                                                <div class="p-5">
                                                    <div class="text-base font-medium truncate">Thông báo</div>
                                                    <div class="text-gray-500 mt-1">2022-01-01 00:00:00</div>
                                                    <div class="text-gray-600 text-justify mt-1">Mọi người cần hỗ trợ thì Inbox Page: https://zalo.me/0584768479 (thời gian từ 8h30 sáng -> 9h30 tối) để được hỗ trợ nhanh nhất, tránh mất tiền oan.</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- END: Important Notes -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END: Content -->

        </div>
    </div>
    <div class="modal show" id="header-footer-modal-preview" tabindex="-1" aria-hidden="true" style="margin-top: 0px; margin-left: 0px; padding-left: 0px; z-index: 10000;">
        <div class="modal-dialog">
            <div class="modal-content">

                <div class="modal-header">
                    <h2 class="font-medium text-base mr-auto">
                        THÔNG BÁO
                    </h2>
                </div>


                <div class="modal-body grid grid-cols-12 gap-4 gap-y-3">
                    <div class="col-span-12 sm:col-span-12">
                        <div type="" id="6kle6_fmd1m" name="fmd1m" style=""><b><?=$NHNTAK->site('thongbao');?></div>
                    </div>
                </div>


                <div class="modal-footer text-center">
                    <button class="btn btn-primary w-20" type="button" title="comfirm" data-dismiss="modal">
                        Đóng
                    </button>
                </div>

            </div>
        </div>
    </div>
<?php 
require_once(__DIR__."/public/client/Footer.php");
?>