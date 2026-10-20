.class public final Lteam/opay/pay/home/MainActivity;
.super Lteam/opay/pay/home/Hilt_MainActivity;
.source "MainActivity.kt"

# interfaces
.implements Lteam/opay/pay/home/d;
.implements Lteam/opay/swarmfoundation/login/ILoginListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/home/MainActivity$Companion;,
        Lteam/opay/pay/home/MainActivity$Tab;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008*\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00b7\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0004\u00b8\u0001\u00b7\u0001B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0006J\u000f\u0010\u000e\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0006J\u000f\u0010\u000f\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0006J\u000f\u0010\u0010\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0006J\u001d\u0010\u0014\u001a\u00020\u000c2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0006J\u000f\u0010\u0017\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0006J\u0019\u0010\u001a\u001a\u00020\u000c2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0006J\u000f\u0010\u001d\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0006J\u000f\u0010\u001e\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u0006J/\u0010%\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\t2\u000e\u0010\"\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020!0 2\u0006\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0017\u0010)\u001a\u00020\u000c2\u0006\u0010(\u001a\u00020\'H\u0002\u00a2\u0006\u0004\u0008)\u0010*J\u000f\u0010+\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008+\u0010\u0006J\u000f\u0010,\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008,\u0010\u0006J\u000f\u0010-\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008-\u0010\u0006J#\u00101\u001a\u00020\u000c2\u0008\u0010.\u001a\u0004\u0018\u00010\u00182\u0008\u00100\u001a\u0004\u0018\u00010/H\u0002\u00a2\u0006\u0004\u00081\u00102J\u0019\u00101\u001a\u00020\u000c2\u0008\u0010.\u001a\u0004\u0018\u00010\u0018H\u0002\u00a2\u0006\u0004\u00081\u0010\u001bJ\u0019\u00103\u001a\u00020\u000c2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0002\u00a2\u0006\u0004\u00083\u0010\u001bJ\u000f\u00104\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u00084\u0010\u0006J\u0017\u00106\u001a\u0002052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00086\u00107J\u000f\u00108\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u00088\u0010\u0006J\u0017\u0010:\u001a\u00020\u000c2\u0006\u00109\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008:\u0010;J\u000f\u0010<\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008<\u0010\u0006J\u000f\u0010=\u001a\u00020\u000cH\u0003\u00a2\u0006\u0004\u0008=\u0010\u0006J\u000f\u0010>\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008>\u0010\u0006J\u0019\u0010?\u001a\u00020\u000c2\u0008\u0010(\u001a\u0004\u0018\u00010\'H\u0002\u00a2\u0006\u0004\u0008?\u0010*J\u0017\u0010@\u001a\u00020\u000c2\u0006\u0010(\u001a\u00020\'H\u0002\u00a2\u0006\u0004\u0008@\u0010*J\u0017\u0010B\u001a\u00020\u000c2\u0006\u0010A\u001a\u00020!H\u0002\u00a2\u0006\u0004\u0008B\u0010CJ\u000f\u0010D\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008D\u0010\u0006J\u000f\u0010E\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008E\u0010\u0006J\r\u0010F\u001a\u00020\u0007\u00a2\u0006\u0004\u0008F\u0010GJ\u0019\u0010H\u001a\u00020\u000c2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008H\u0010\u001bJ\u0019\u0010I\u001a\u00020\u000c2\u0008\u0010(\u001a\u0004\u0018\u00010\'H\u0014\u00a2\u0006\u0004\u0008I\u0010*J\u0015\u0010J\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008J\u0010KJ\u0017\u0010L\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u0018H\u0014\u00a2\u0006\u0004\u0008L\u0010\u001bJ\u0017\u0010M\u001a\u00020\u000c2\u0006\u0010.\u001a\u00020\u0018H\u0015\u00a2\u0006\u0004\u0008M\u0010\u001bJ/\u0010N\u001a\u00020\u000c2\u0006\u0010\u001f\u001a\u00020\t2\u000e\u0010\"\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020!0 2\u0006\u0010$\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008N\u0010&J\u000f\u0010O\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008O\u0010\u0006J\u000f\u0010P\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008P\u0010\u0006J\u000f\u0010Q\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008Q\u0010\u0006J\u000f\u0010R\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008R\u0010\u0006J\u000f\u0010S\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008S\u0010\u0006J\u000f\u0010T\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008T\u0010\u0006J\u000f\u0010U\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008U\u0010\u0006J\u000f\u0010V\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008V\u0010\u0006J\u000f\u0010W\u001a\u00020\u000cH\u0017\u00a2\u0006\u0004\u0008W\u0010\u0006J\r\u0010X\u001a\u00020\u000c\u00a2\u0006\u0004\u0008X\u0010\u0006J\u000f\u0010Y\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008Y\u0010\u0006J\u000f\u0010Z\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008Z\u0010\u0006R\u001a\u0010_\u001a\u00020!8\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008[\u0010\\\u001a\u0004\u0008]\u0010^R\u001b\u0010e\u001a\u00020`8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008a\u0010b\u001a\u0004\u0008c\u0010dR\u001b\u0010j\u001a\u00020f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008g\u0010b\u001a\u0004\u0008h\u0010iR\u001b\u0010o\u001a\u00020k8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008l\u0010b\u001a\u0004\u0008m\u0010nR\u001b\u0010t\u001a\u00020p8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008q\u0010b\u001a\u0004\u0008r\u0010sR\"\u0010u\u001a\u0002058\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008u\u0010v\u001a\u0004\u0008w\u0010x\"\u0004\u0008y\u0010zR\"\u0010{\u001a\u0002058\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008{\u0010v\u001a\u0004\u0008|\u0010x\"\u0004\u0008}\u0010zR#\u0010\u0081\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00118BX\u0082\u0084\u0002\u00a2\u0006\r\n\u0004\u0008~\u0010b\u001a\u0005\u0008\u007f\u0010\u0080\u0001R=\u0010\u0087\u0001\u001a \u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00120\u0082\u0001j\u000f\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0012`\u0083\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0084\u0001\u0010b\u001a\u0006\u0008\u0085\u0001\u0010\u0086\u0001R\'\u0010\u008d\u0001\u001a\n\u0012\u0005\u0012\u00030\u0089\u00010\u0088\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u008a\u0001\u0010b\u001a\u0006\u0008\u008b\u0001\u0010\u008c\u0001R*\u0010\u008f\u0001\u001a\u00030\u008e\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u008f\u0001\u0010\u0090\u0001\u001a\u0006\u0008\u0091\u0001\u0010\u0092\u0001\"\u0006\u0008\u0093\u0001\u0010\u0094\u0001R*\u0010\u0096\u0001\u001a\u00030\u0095\u00018\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0006\u0008\u0096\u0001\u0010\u0097\u0001\u001a\u0006\u0008\u0098\u0001\u0010\u0099\u0001\"\u0006\u0008\u009a\u0001\u0010\u009b\u0001R\u0019\u0010\u009c\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u009c\u0001\u0010\u009d\u0001R5\u0010\u00a0\u0001\u001a \u0012\u001b\u0012\u0019\u0012\u0004\u0012\u00020!\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020!\u0018\u00010\u0011\u0018\u00010\u009f\u00010\u009e\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001R-\u0010\u00a2\u0001\u001a\u0018\u0012\u0013\u0012\u0011\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020!\u0018\u00010\u009f\u00010\u009e\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00a2\u0001\u0010\u00a1\u0001R-\u0010\u00a6\u0001\u001a\u0016\u0012\u0005\u0012\u00030\u00a4\u00010\u00a3\u0001j\n\u0012\u0005\u0012\u00030\u00a4\u0001`\u00a5\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R\u0018\u0010\u00a8\u0001\u001a\u0002058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00a8\u0001\u0010vR,\u0010\u00aa\u0001\u001a\u0005\u0018\u00010\u00a9\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001\u001a\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001\"\u0006\u0008\u00ae\u0001\u0010\u00af\u0001R\u0018\u0010\u00b0\u0001\u001a\u0002058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00b0\u0001\u0010vR\u001c\u0010\u00b2\u0001\u001a\u0005\u0018\u00010\u00b1\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001R\u0017\u0010\u00b6\u0001\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00b4\u0001\u0010\u00b5\u0001\u00a8\u0006\u00b9\u0001"
    }
    d2 = {
        "Lteam/opay/pay/home/MainActivity;",
        "Lteam/opay/pay/android/BaseActivity;",
        "Lteam/opay/pay/home/d;",
        "Lteam/opay/swarmfoundation/login/ILoginListener;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/pay/home/MainActivity$Tab;",
        "tab",
        "",
        "getIndexForTab",
        "(Lteam/opay/pay/home/MainActivity$Tab;)I",
        "",
        "logDarkMode",
        "initHomePlaceHolder",
        "addObserve",
        "flowBusEvent",
        "",
        "Lteam/opay/core/api/graphql/BubbleAdData;",
        "datas",
        "showTabBubbles",
        "(Ljava/util/List;)V",
        "loadUnDoneOrder",
        "initMainActivityDelegate",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "delegateOnCreate",
        "(Landroid/os/Bundle;)V",
        "delegateOnStart",
        "delegateOnResume",
        "delegateOnPause",
        "requestCode",
        "",
        "",
        "permissions",
        "",
        "grantResults",
        "delegateOnRequestPermissionsResult",
        "(I[Ljava/lang/String;[I)V",
        "Landroid/content/Intent;",
        "intent",
        "delegateOnNewIntent",
        "(Landroid/content/Intent;)V",
        "delegateOnStop",
        "delegateOnDestroy",
        "delegateOnRestart",
        "outState",
        "Landroid/os/PersistableBundle;",
        "outPersistentState",
        "delegateOnSaveInstanceState",
        "(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V",
        "delegateOnRestoreInstanceState",
        "enableAppLock",
        "",
        "open",
        "(Lteam/opay/pay/home/MainActivity$Tab;)Z",
        "setupContentPager",
        "id",
        "onBubbleTabClicked",
        "(I)V",
        "setupBottomNavigation",
        "showDotOrHide",
        "loadTabData",
        "handleGoogleActions",
        "handleDeepLink",
        "name",
        "logDeepLinkEvent",
        "(Ljava/lang/String;)V",
        "exitBy2Click",
        "getSession",
        "getClickedTab",
        "()Lteam/opay/pay/home/MainActivity$Tab;",
        "onCreate",
        "onNewIntent",
        "switchTab",
        "(Lteam/opay/pay/home/MainActivity$Tab;)V",
        "onRestoreInstanceState",
        "onSaveInstanceState",
        "onRequestPermissionsResult",
        "onResume",
        "onStop",
        "onRestart",
        "onPause",
        "onStart",
        "onDestroy",
        "onTabDataLoadFinished",
        "onActionBarBack",
        "onBackPressed",
        "callOpaySupport",
        "onCancel",
        "onSuccess",
        "TAG$1",
        "Ljava/lang/String;",
        "getTAG",
        "()Ljava/lang/String;",
        "TAG",
        "Lmf;",
        "viewBinding$delegate",
        "Lid8;",
        "getViewBinding",
        "()Lmf;",
        "viewBinding",
        "Lm79;",
        "holderBinding$delegate",
        "getHolderBinding",
        "()Lm79;",
        "holderBinding",
        "Lteam/opay/pay/home/MainViewModel;",
        "viewModel$delegate",
        "getViewModel",
        "()Lteam/opay/pay/home/MainViewModel;",
        "viewModel",
        "Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;",
        "topBottomViewModel$delegate",
        "getTopBottomViewModel",
        "()Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;",
        "topBottomViewModel",
        "needPaddingTop",
        "Z",
        "getNeedPaddingTop",
        "()Z",
        "setNeedPaddingTop",
        "(Z)V",
        "needPaddingBottom",
        "getNeedPaddingBottom",
        "setNeedPaddingBottom",
        "tabs$delegate",
        "getTabs",
        "()Ljava/util/List;",
        "tabs",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "bubbleMap$delegate",
        "getBubbleMap",
        "()Ljava/util/HashMap;",
        "bubbleMap",
        "Lteam/opay/pay/android/SimplePagerAdapter;",
        "Landroidx/fragment/app/Fragment;",
        "tabAdapter$delegate",
        "getTabAdapter",
        "()Lteam/opay/pay/android/SimplePagerAdapter;",
        "tabAdapter",
        "Lp60;",
        "assistantUserActions",
        "Lp60;",
        "getAssistantUserActions",
        "()Lp60;",
        "setAssistantUserActions",
        "(Lp60;)V",
        "Lteam/opay/core/settings/SettingsStorage;",
        "settingsStorage",
        "Lteam/opay/core/settings/SettingsStorage;",
        "getSettingsStorage",
        "()Lteam/opay/core/settings/SettingsStorage;",
        "setSettingsStorage",
        "(Lteam/opay/core/settings/SettingsStorage;)V",
        "clickedTab",
        "Lteam/opay/pay/home/MainActivity$Tab;",
        "Lvfa;",
        "Lkotlin/Pair;",
        "adShowObserver",
        "Lvfa;",
        "adClickObserver",
        "Ljava/util/ArrayList;",
        "Lteam/opay/pay/home/MainActivityDelegate;",
        "Lkotlin/collections/ArrayList;",
        "listMainActivityDelegate",
        "Ljava/util/ArrayList;",
        "initHolder",
        "Landroid/view/View;",
        "dotView",
        "Landroid/view/View;",
        "getDotView",
        "()Landroid/view/View;",
        "setDotView",
        "(Landroid/view/View;)V",
        "isExit",
        "Lkotlinx/coroutines/l;",
        "exitJob",
        "Lkotlinx/coroutines/l;",
        "getSelectedTab",
        "()I",
        "selectedTab",
        "Companion",
        "Tab",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lteam/opay/pay/home/MainActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT_TAB:Lteam/opay/pay/home/MainActivity$Tab;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SELECTED_TAB:Ljava/lang/String; = "SELECTED_TAB"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final STATE_CURRENT_TAB:Ljava/lang/String; = "CURRENT_TAB"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TAG$1:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final adClickObserver:Lvfa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvfa<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final adShowObserver:Lvfa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvfa<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public assistantUserActions:Lp60;

.field private final bubbleMap$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private clickedTab:Lteam/opay/pay/home/MainActivity$Tab;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dotView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private exitJob:Lkotlinx/coroutines/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final holderBinding$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private initHolder:Z

.field private isExit:Z

.field private listMainActivityDelegate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lteam/opay/pay/home/MainActivityDelegate;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private needPaddingBottom:Z

.field private needPaddingTop:Z

.field public settingsStorage:Lteam/opay/core/settings/SettingsStorage;

.field private final tabAdapter$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tabs$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final topBottomViewModel$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewBinding$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModel$delegate:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/home/MainActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/home/MainActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/home/MainActivity;->Companion:Lteam/opay/pay/home/MainActivity$Companion;

    .line 8
    .line 9
    const-class v0, Lteam/opay/pay/home/MainActivity;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lteam/opay/pay/home/MainActivity;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v0, Lteam/opay/pay/home/MainActivity$Tab;->HOME:Lteam/opay/pay/home/MainActivity$Tab;

    .line 18
    .line 19
    sput-object v0, Lteam/opay/pay/home/MainActivity;->DEFAULT_TAB:Lteam/opay/pay/home/MainActivity$Tab;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    sget v0, Lteam/opay/pay/R$layout;->activity_main:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/pay/home/Hilt_MainActivity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const-string v0, "MainActivity"

    .line 7
    .line 8
    iput-object v0, p0, Lteam/opay/pay/home/MainActivity;->TAG$1:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v0, Lqq8;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lqq8;-><init>(Lteam/opay/pay/home/MainActivity;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lteam/opay/pay/home/MainActivity;->viewBinding$delegate:Lid8;

    .line 20
    .line 21
    new-instance v0, Lrq8;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lrq8;-><init>(Lteam/opay/pay/home/MainActivity;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lteam/opay/pay/home/MainActivity;->holderBinding$delegate:Lid8;

    .line 31
    .line 32
    new-instance v0, Lteam/opay/pay/home/MainActivity$special$$inlined$viewModels$default$1;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lteam/opay/pay/home/MainActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 38
    .line 39
    const-class v2, Lteam/opay/pay/home/MainViewModel;

    .line 40
    .line 41
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    new-instance v3, Lteam/opay/pay/home/MainActivity$special$$inlined$viewModels$default$2;

    .line 46
    .line 47
    invoke-direct {v3, p0}, Lteam/opay/pay/home/MainActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 48
    .line 49
    .line 50
    new-instance v4, Lteam/opay/pay/home/MainActivity$special$$inlined$viewModels$default$3;

    .line 51
    .line 52
    const/4 v5, 0x0

    .line 53
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/home/MainActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lteam/opay/pay/home/MainActivity;->viewModel$delegate:Lid8;

    .line 60
    .line 61
    new-instance v0, Lteam/opay/pay/home/MainActivity$special$$inlined$viewModels$default$4;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lteam/opay/pay/home/MainActivity$special$$inlined$viewModels$default$4;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 67
    .line 68
    const-class v2, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 69
    .line 70
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    new-instance v3, Lteam/opay/pay/home/MainActivity$special$$inlined$viewModels$default$5;

    .line 75
    .line 76
    invoke-direct {v3, p0}, Lteam/opay/pay/home/MainActivity$special$$inlined$viewModels$default$5;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 77
    .line 78
    .line 79
    new-instance v4, Lteam/opay/pay/home/MainActivity$special$$inlined$viewModels$default$6;

    .line 80
    .line 81
    invoke-direct {v4, v5, p0}, Lteam/opay/pay/home/MainActivity$special$$inlined$viewModels$default$6;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lho7;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 85
    .line 86
    .line 87
    iput-object v1, p0, Lteam/opay/pay/home/MainActivity;->topBottomViewModel$delegate:Lid8;

    .line 88
    .line 89
    new-instance v0, Lsq8;

    .line 90
    .line 91
    invoke-direct {v0}, Lsq8;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lteam/opay/pay/home/MainActivity;->tabs$delegate:Lid8;

    .line 99
    .line 100
    new-instance v0, Ltq8;

    .line 101
    .line 102
    invoke-direct {v0}, Ltq8;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p0, Lteam/opay/pay/home/MainActivity;->bubbleMap$delegate:Lid8;

    .line 110
    .line 111
    new-instance v0, Luq8;

    .line 112
    .line 113
    invoke-direct {v0, p0}, Luq8;-><init>(Lteam/opay/pay/home/MainActivity;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iput-object v0, p0, Lteam/opay/pay/home/MainActivity;->tabAdapter$delegate:Lid8;

    .line 121
    .line 122
    sget-object v0, Lteam/opay/pay/home/MainActivity$Tab;->HOME:Lteam/opay/pay/home/MainActivity$Tab;

    .line 123
    .line 124
    iput-object v0, p0, Lteam/opay/pay/home/MainActivity;->clickedTab:Lteam/opay/pay/home/MainActivity$Tab;

    .line 125
    .line 126
    new-instance v0, Lvq8;

    .line 127
    .line 128
    invoke-direct {v0, p0}, Lvq8;-><init>(Lteam/opay/pay/home/MainActivity;)V

    .line 129
    .line 130
    .line 131
    iput-object v0, p0, Lteam/opay/pay/home/MainActivity;->adShowObserver:Lvfa;

    .line 132
    .line 133
    new-instance v0, Lwq8;

    .line 134
    .line 135
    invoke-direct {v0, p0}, Lwq8;-><init>(Lteam/opay/pay/home/MainActivity;)V

    .line 136
    .line 137
    .line 138
    iput-object v0, p0, Lteam/opay/pay/home/MainActivity;->adClickObserver:Lvfa;

    .line 139
    .line 140
    new-instance v0, Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .line 144
    .line 145
    iput-object v0, p0, Lteam/opay/pay/home/MainActivity;->listMainActivityDelegate:Ljava/util/ArrayList;

    .line 146
    .line 147
    return-void
.end method

.method public static synthetic A(Lteam/opay/pay/home/MainActivity;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/MainActivity;->setupBottomNavigation$lambda$40$lambda$39(Lteam/opay/pay/home/MainActivity;Landroid/view/MenuItem;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic B(Lteam/opay/pay/home/MainActivity;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/MainActivity;->loadUnDoneOrder$lambda$19(Lteam/opay/pay/home/MainActivity;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lteam/opay/pay/home/MainActivity;)Lm79;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/MainActivity;->holderBinding_delegate$lambda$1(Lteam/opay/pay/home/MainActivity;)Lm79;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D(Lteam/opay/pay/home/MainActivity;)Lteam/opay/pay/android/SimplePagerAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/MainActivity;->tabAdapter_delegate$lambda$4(Lteam/opay/pay/home/MainActivity;)Lteam/opay/pay/android/SimplePagerAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E(Lteam/opay/pay/home/MainActivity;)Lmf;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/MainActivity;->viewBinding_delegate$lambda$0(Lteam/opay/pay/home/MainActivity;)Lmf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F(Lteam/opay/pay/home/MainActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/MainActivity;->addObserve$lambda$13(Lteam/opay/pay/home/MainActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lteam/opay/pay/home/MainActivity;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/MainActivity;->addObserve$lambda$12(Lteam/opay/pay/home/MainActivity;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H()Ljava/util/HashMap;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/home/MainActivity;->bubbleMap_delegate$lambda$3()Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic I(Lteam/opay/pay/home/MainActivity;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/MainActivity;->onCreate$lambda$8(Lteam/opay/pay/home/MainActivity;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic J(Lteam/opay/pay/home/MainActivity;Lteam/opay/pay/home/MainActivity$Tab;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/MainActivity;->onCreate$lambda$8$lambda$7(Lteam/opay/pay/home/MainActivity;Lteam/opay/pay/home/MainActivity$Tab;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic K(Lteam/opay/pay/home/MainActivity;Lcom/opay/team/newhome/home/ForceMessageData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/MainActivity;->addObserve$lambda$14(Lteam/opay/pay/home/MainActivity;Lcom/opay/team/newhome/home/ForceMessageData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic L(Lteam/opay/pay/home/MainActivity;Lkotlin/Pair;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/MainActivity;->adShowObserver$lambda$5(Lteam/opay/pay/home/MainActivity;Lkotlin/Pair;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic M()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/home/MainActivity;->tabs_delegate$lambda$2()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic N(Lteam/opay/pay/home/MainActivity;Lkotlin/Pair;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/MainActivity;->adClickObserver$lambda$6(Lteam/opay/pay/home/MainActivity;Lkotlin/Pair;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getSelectedTab(Lteam/opay/pay/home/MainActivity;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->getSelectedTab()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$onBubbleTabClicked(Lteam/opay/pay/home/MainActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lteam/opay/pay/home/MainActivity;->onBubbleTabClicked(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setExit$p(Lteam/opay/pay/home/MainActivity;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/home/MainActivity;->isExit:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$showDotOrHide(Lteam/opay/pay/home/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->showDotOrHide()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final adClickObserver$lambda$6(Lteam/opay/pay/home/MainActivity;Lkotlin/Pair;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewModel()Lteam/opay/pay/home/MainViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance v0, Lteam/opay/pay/api/AdClickFeedbackReq;

    .line 9
    .line 10
    sget-object v1, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 11
    .line 12
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/String;

    .line 31
    .line 32
    invoke-direct {v0, v1, v2, p1}, Lteam/opay/pay/api/AdClickFeedbackReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lteam/opay/pay/home/MainViewModel;->d0(Lteam/opay/pay/api/AdClickFeedbackReq;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private static final adShowObserver$lambda$5(Lteam/opay/pay/home/MainActivity;Lkotlin/Pair;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/util/List;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v1, v0

    .line 12
    :goto_0
    if-eqz v1, :cond_6

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    new-instance v1, Lteam/opay/pay/api/BubbleReachReq;

    .line 22
    .line 23
    sget-object v2, Lteam/opay/core/account/AccountInfoManager;->g:Lteam/opay/core/account/AccountInfoManager$Companion;

    .line 24
    .line 25
    invoke-virtual {v2}, Lteam/opay/core/account/AccountInfoManager$Companion;->a()Lteam/opay/core/account/AccountInfoManager;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lteam/opay/core/account/AccountInfoManager;->u()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/String;

    .line 40
    .line 41
    :cond_2
    if-nez v0, :cond_3

    .line 42
    .line 43
    const-string v0, ""

    .line 44
    .line 45
    :cond_3
    if-eqz p1, :cond_4

    .line 46
    .line 47
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Ljava/util/List;

    .line 52
    .line 53
    if-nez p1, :cond_5

    .line 54
    .line 55
    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :cond_5
    invoke-direct {v1, v2, v0, p1}, Lteam/opay/pay/api/BubbleReachReq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewModel()Lteam/opay/pay/home/MainViewModel;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/MainViewModel;->h0(Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    :cond_6
    :goto_1
    return-void
.end method

.method private final addObserve()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewModel()Lteam/opay/pay/home/MainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lteam/opay/pay/home/MainViewModel;->S0(Lteam/opay/pay/home/MainActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewModel()Lteam/opay/pay/home/MainViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Lteam/opay/pay/home/MainViewModel;->K0(Lteam/opay/pay/home/MainActivity;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewModel()Lteam/opay/pay/home/MainViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lteam/opay/pay/home/MainViewModel;->y0()Landroidx/lifecycle/MutableLiveData;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lxq8;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lxq8;-><init>(Lteam/opay/pay/home/MainActivity;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p0, v1}, Lnna;->c(Landroidx/lifecycle/LiveData;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewModel()Lteam/opay/pay/home/MainViewModel;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lteam/opay/pay/home/MainViewModel;->H0()Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lyq8;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lyq8;-><init>(Lteam/opay/pay/home/MainActivity;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lteam/opay/pay/home/MainActivity$d;

    .line 45
    .line 46
    invoke-direct {v2, v1}, Lteam/opay/pay/home/MainActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->getTopBottomViewModel()Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->g0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    new-instance v1, Llq8;

    .line 61
    .line 62
    invoke-direct {v1, p0}, Llq8;-><init>(Lteam/opay/pay/home/MainActivity;)V

    .line 63
    .line 64
    .line 65
    new-instance v2, Lteam/opay/pay/home/MainActivity$d;

    .line 66
    .line 67
    invoke-direct {v2, v1}, Lteam/opay/pay/home/MainActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->observe(Lag8;Lvfa;)V

    .line 71
    .line 72
    .line 73
    sget-object v0, Lx7b;->a:Lx7b;

    .line 74
    .line 75
    invoke-virtual {v0}, Lx7b;->l()Lteam/opay/pay/util/SingleLiveEvent;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v2, p0, Lteam/opay/pay/home/MainActivity;->adShowObserver:Lvfa;

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->observeForever(Lvfa;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lx7b;->k()Lteam/opay/pay/util/SingleLiveEvent;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v1, p0, Lteam/opay/pay/home/MainActivity;->adClickObserver:Lvfa;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Lvfa;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->flowBusEvent()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method private static final addObserve$lambda$12(Lteam/opay/pay/home/MainActivity;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    invoke-direct {p0, p1}, Lteam/opay/pay/home/MainActivity;->showTabBubbles(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method private static final addObserve$lambda$13(Lteam/opay/pay/home/MainActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->getHolderBinding()Lm79;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lm79;->d:Landroidx/constraintlayout/widget/Group;

    .line 6
    .line 7
    const-string v0, "holderList"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {p0, p1}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 20
    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method private static final addObserve$lambda$14(Lteam/opay/pay/home/MainActivity;Lcom/opay/team/newhome/home/ForceMessageData;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 7
    .line 8
    const-class v1, Lteam/opay/swarmfoundation/message/IForceRemindNoticeShowDelegate;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lteam/opay/swarmfoundation/message/IForceRemindNoticeShowDelegate;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v1, Lcom/google/gson/Gson;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v0, p1, p0}, Lteam/opay/swarmfoundation/message/IForceRemindNoticeShowDelegate;->showIfNeed(Ljava/lang/String;Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method

.method private static final bubbleMap_delegate$lambda$3()Ljava/util/HashMap;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final delegateOnCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lteam/opay/pay/home/MainActivity;->listMainActivityDelegate:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getTAG()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    sub-long/2addr v3, v0

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v6, "\u603b\u5171\u8017\u65f6 \u7c7b\u52a0\u8f7d\u65f6\u95f4 "

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lteam/opay/pay/home/MainActivityDelegate;

    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    sget-object v6, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 50
    .line 51
    invoke-virtual {v6}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v6}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_0

    .line 60
    .line 61
    invoke-virtual {v3, p1}, Lteam/opay/pay/home/MainActivityDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, p1, p0}, Lteam/opay/pay/home/MainActivityDelegate;->onCreate(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_0
    invoke-virtual {v3, p1}, Lteam/opay/pay/home/MainActivityDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, p1, p0}, Lteam/opay/pay/home/MainActivityDelegate;->onCreate(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getTAG()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v6

    .line 89
    sub-long/2addr v6, v4

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string/jumbo v5, "\u603b\u5171\u8017\u65f6 \u7c7b====== "

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v3, " \u52a0\u8f7d\u65f6\u957f:"

    .line 105
    .line 106
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getTAG()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    sub-long/2addr v2, v0

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string/jumbo v0, "\u603b\u5171\u8017\u65f6 "

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method private final delegateOnDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->listMainActivityDelegate:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lteam/opay/pay/home/MainActivityDelegate;

    .line 18
    .line 19
    invoke-virtual {v1}, Lteam/opay/pay/home/MainActivityDelegate;->onDestroy()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private final delegateOnNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->listMainActivityDelegate:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lteam/opay/pay/home/MainActivityDelegate;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lteam/opay/pay/home/MainActivityDelegate;->onNewIntent(Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private final delegateOnPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->listMainActivityDelegate:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lteam/opay/pay/home/MainActivityDelegate;

    .line 18
    .line 19
    invoke-virtual {v1}, Lteam/opay/pay/home/MainActivityDelegate;->onPause()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private final delegateOnRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->listMainActivityDelegate:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lteam/opay/pay/home/MainActivityDelegate;

    .line 18
    .line 19
    invoke-virtual {v1, p1, p2, p3}, Lteam/opay/pay/home/MainActivityDelegate;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private final delegateOnRestart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->listMainActivityDelegate:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lteam/opay/pay/home/MainActivityDelegate;

    .line 18
    .line 19
    invoke-virtual {v1}, Lteam/opay/pay/home/MainActivityDelegate;->onRestart()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private final delegateOnRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->listMainActivityDelegate:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lteam/opay/pay/home/MainActivityDelegate;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lteam/opay/pay/home/MainActivityDelegate;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private final delegateOnResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->listMainActivityDelegate:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lteam/opay/pay/home/MainActivityDelegate;

    .line 18
    .line 19
    invoke-virtual {v1}, Lteam/opay/pay/home/MainActivityDelegate;->onResume()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private final delegateOnSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->listMainActivityDelegate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/pay/home/MainActivityDelegate;

    invoke-virtual {v1, p1}, Lteam/opay/pay/home/MainActivityDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final delegateOnSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->listMainActivityDelegate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lteam/opay/pay/home/MainActivityDelegate;

    invoke-virtual {v1, p1, p2}, Lteam/opay/pay/home/MainActivityDelegate;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final delegateOnStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->listMainActivityDelegate:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lteam/opay/pay/home/MainActivityDelegate;

    .line 18
    .line 19
    invoke-virtual {v1}, Lteam/opay/pay/home/MainActivityDelegate;->onStart()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private final delegateOnStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->listMainActivityDelegate:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lteam/opay/pay/home/MainActivityDelegate;

    .line 18
    .line 19
    invoke-virtual {v1}, Lteam/opay/pay/home/MainActivityDelegate;->onStop()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private final enableAppLock()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lteam/opay/pay/android/BaseActivity;->setSkipAppLock(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/android/BaseActivity;->getAppLock()Lteam/opay/pay/android/AppLock;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lteam/opay/pay/android/AppLock;->i(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private final exitBy2Click()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/MainActivity;->isExit:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-boolean v1, p0, Lteam/opay/pay/home/MainActivity;->isExit:Z

    .line 8
    .line 9
    sget v0, Lteam/opay/pay/R$string;->osdk_2_click_to_exit:I

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "getString(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0}, Lkmf;->M(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lbg8;->a(Lag8;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {}, Lni3;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    new-instance v6, Lteam/opay/pay/home/MainActivity$exitBy2Click$1;

    .line 32
    .line 33
    invoke-direct {v6, p0, v2}, Lteam/opay/pay/home/MainActivity$exitBy2Click$1;-><init>(Lteam/opay/pay/home/MainActivity;Ljr2;)V

    .line 34
    .line 35
    .line 36
    const/4 v7, 0x2

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-static/range {v3 .. v8}, Lxk1;->d(Lzr2;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/l;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lteam/opay/pay/home/MainActivity;->exitJob:Lkotlinx/coroutines/l;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getTAG()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->exitJob:Lkotlinx/coroutines/l;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/l$a;->a(Lkotlinx/coroutines/l;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    sget-object v0, Lx7b;->a:Lx7b;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    new-array v1, v1, [Lkotlin/Pair;

    .line 60
    .line 61
    const-string v2, "opay_exit"

    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void
.end method

.method private final flowBusEvent()V
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 2
    .line 3
    new-instance v1, Lteam/opay/pay/home/MainActivity$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lteam/opay/pay/home/MainActivity$a;-><init>(Lteam/opay/pay/home/MainActivity;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "exit_app_event"

    .line 9
    .line 10
    invoke-virtual {v0, p0, v2, v1}, Lteam/opay/pay/util/FlowBus;->b(Lag8;Ljava/lang/Object;La66;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lteam/opay/pay/home/MainActivity$b;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lteam/opay/pay/home/MainActivity$b;-><init>(Lteam/opay/pay/home/MainActivity;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "major_ad_close_event"

    .line 19
    .line 20
    invoke-virtual {v0, p0, v2, v1}, Lteam/opay/pay/util/FlowBus;->b(Lag8;Ljava/lang/Object;La66;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final getBubbleMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lteam/opay/core/api/graphql/BubbleAdData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->bubbleMap$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getHolderBinding()Lm79;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->holderBinding$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lm79;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getIndexForTab(Lteam/opay/pay/home/MainActivity$Tab;)I
    .locals 1

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->getTabs()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method private final getSelectedTab()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lmf;->b:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getSelectedItemId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method private final getSession()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewModel()Lteam/opay/pay/home/MainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/core/api/BaseAndroidViewModel;->v()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lql8;->a:Lql8;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lql8;->h(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewModel()Lteam/opay/pay/home/MainViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x2

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v0, p0, v2, v1, v2}, Lteam/opay/core/api/BaseAndroidViewModel;->u(Lteam/opay/core/api/BaseAndroidViewModel;Lag8;Ljava/lang/String;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private final getTabAdapter()Lteam/opay/pay/android/SimplePagerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/pay/android/SimplePagerAdapter<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->tabAdapter$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/android/SimplePagerAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lteam/opay/pay/home/MainActivity$Tab;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->tabs$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getTopBottomViewModel()Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->topBottomViewModel$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final handleDeepLink(Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v2, v1

    .line 14
    :goto_0
    if-eqz v2, :cond_6

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    sparse-switch v3, :sswitch_data_0

    .line 21
    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :sswitch_0
    const-string v3, "opay"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :sswitch_1
    const-string v3, "home"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    sget-object v2, Lteam/opay/pay/home/MainActivity$Tab;->HOME:Lteam/opay/pay/home/MainActivity$Tab;

    .line 45
    .line 46
    invoke-direct {p0, v2}, Lteam/opay/pay/home/MainActivity;->open(Lteam/opay/pay/home/MainActivity$Tab;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :sswitch_2
    const-string v3, "card"

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    sget-object v2, Lteam/opay/pay/home/MainActivity$Tab;->CARD:Lteam/opay/pay/home/MainActivity$Tab;

    .line 60
    .line 61
    invoke-direct {p0, v2}, Lteam/opay/pay/home/MainActivity;->open(Lteam/opay/pay/home/MainActivity$Tab;)Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewModel()Lteam/opay/pay/home/MainViewModel;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Lteam/opay/pay/home/MainViewModel;->B0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2, v0}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :sswitch_3
    const-string v3, "finance"

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    sget-object v2, Lteam/opay/pay/home/MainActivity$Tab;->FIN:Lteam/opay/pay/home/MainActivity$Tab;

    .line 86
    .line 87
    invoke-direct {p0, v2}, Lteam/opay/pay/home/MainActivity;->open(Lteam/opay/pay/home/MainActivity$Tab;)Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewModel()Lteam/opay/pay/home/MainViewModel;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, Lteam/opay/pay/home/MainViewModel;->C0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2, v0}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :sswitch_4
    const-string v3, "reward"

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-nez v2, :cond_4

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    sget-object v2, Lteam/opay/pay/home/MainActivity$Tab;->REWARD:Lteam/opay/pay/home/MainActivity$Tab;

    .line 112
    .line 113
    invoke-direct {p0, v2}, Lteam/opay/pay/home/MainActivity;->open(Lteam/opay/pay/home/MainActivity$Tab;)Z

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewModel()Lteam/opay/pay/home/MainViewModel;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Lteam/opay/pay/home/MainViewModel;->D0()Lteam/opay/pay/util/SingleLiveEvent;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2, v0}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :sswitch_5
    const-string v3, "account"

    .line 129
    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-nez v2, :cond_5

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_5
    sget-object v2, Lteam/opay/pay/home/MainActivity$Tab;->ME:Lteam/opay/pay/home/MainActivity$Tab;

    .line 138
    .line 139
    invoke-direct {p0, v2}, Lteam/opay/pay/home/MainActivity;->open(Lteam/opay/pay/home/MainActivity$Tab;)Z

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_6
    :goto_1
    invoke-static {}, Lx7e;->c()Lkotlin/jvm/functions/Function0;

    .line 144
    .line 145
    .line 146
    :goto_2
    sget-object v2, Lx7b;->a:Lx7b;

    .line 147
    .line 148
    if-eqz v0, :cond_7

    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    goto :goto_3

    .line 155
    :cond_7
    move-object v3, v1

    .line 156
    :goto_3
    const-string v4, "url"

    .line 157
    .line 158
    invoke-static {v4, v3}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    const/4 v4, 0x1

    .line 163
    new-array v4, v4, [Lkotlin/Pair;

    .line 164
    .line 165
    const/4 v5, 0x0

    .line 166
    aput-object v3, v4, v5

    .line 167
    .line 168
    const-string v3, "open_tab_auto_deeplink"

    .line 169
    .line 170
    invoke-virtual {v2, v3, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 171
    .line 172
    .line 173
    if-eqz v0, :cond_8

    .line 174
    .line 175
    const-string v2, "scheme"

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    goto :goto_4

    .line 182
    :cond_8
    move-object v2, v1

    .line 183
    :goto_4
    const-string v3, ""

    .line 184
    .line 185
    if-nez v2, :cond_9

    .line 186
    .line 187
    move-object v2, v3

    .line 188
    :cond_9
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    if-lez v4, :cond_a

    .line 193
    .line 194
    sget-object v4, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 195
    .line 196
    const-class v5, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 197
    .line 198
    invoke-virtual {v4, v5}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    check-cast v4, Lteam/opay/swarmfoundation/action/IActionManager;

    .line 203
    .line 204
    if-eqz v4, :cond_a

    .line 205
    .line 206
    invoke-interface {v4, p0, v2, v3}, Lteam/opay/swarmfoundation/action/IActionManager;->open(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    :cond_a
    if-eqz v0, :cond_b

    .line 210
    .line 211
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    goto :goto_5

    .line 216
    :cond_b
    move-object v2, v1

    .line 217
    :goto_5
    if-eqz v2, :cond_15

    .line 218
    .line 219
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    const v5, -0x4a182cfe

    .line 224
    .line 225
    .line 226
    if-eq v4, v5, :cond_c

    .line 227
    .line 228
    goto/16 :goto_8

    .line 229
    .line 230
    :cond_c
    const-string v4, "/android/payment/open"

    .line 231
    .line 232
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eqz v2, :cond_15

    .line 237
    .line 238
    const-string v2, "feature"

    .line 239
    .line 240
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    if-nez v0, :cond_d

    .line 245
    .line 246
    goto :goto_6

    .line 247
    :cond_d
    move-object v3, v0

    .line 248
    :goto_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    sparse-switch v0, :sswitch_data_1

    .line 253
    .line 254
    .line 255
    goto :goto_7

    .line 256
    :sswitch_6
    const-string v0, "Betting"

    .line 257
    .line 258
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-nez v0, :cond_e

    .line 263
    .line 264
    goto :goto_7

    .line 265
    :cond_e
    const-class v1, Lteam/opay/pay/payment/betting/BettingTopupActivity;

    .line 266
    .line 267
    goto :goto_7

    .line 268
    :sswitch_7
    const-string v0, "Airtime"

    .line 269
    .line 270
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-nez v0, :cond_f

    .line 275
    .line 276
    goto :goto_7

    .line 277
    :sswitch_8
    const-string v0, "Data"

    .line 278
    .line 279
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-nez v0, :cond_f

    .line 284
    .line 285
    goto :goto_7

    .line 286
    :cond_f
    const-class v1, Lteam/opay/pay/payment/airtime/AirtimeTopUpActivity;

    .line 287
    .line 288
    goto :goto_7

    .line 289
    :sswitch_9
    const-string v0, "Tv"

    .line 290
    .line 291
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-nez v0, :cond_10

    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_10
    const-class v1, Lteam/opay/pay/payment/tv/TVTopupActivity;

    .line 299
    .line 300
    goto :goto_7

    .line 301
    :sswitch_a
    const-string v0, "AddMoney"

    .line 302
    .line 303
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    if-nez v0, :cond_11

    .line 308
    .line 309
    goto :goto_7

    .line 310
    :cond_11
    const-class v1, Lteam/opay/pay/wallet/AddMoneyActivity;

    .line 311
    .line 312
    goto :goto_7

    .line 313
    :sswitch_b
    const-string v0, "Electricity"

    .line 314
    .line 315
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-nez v0, :cond_12

    .line 320
    .line 321
    goto :goto_7

    .line 322
    :cond_12
    const-class v1, Lteam/opay/pay/payment/electricity/ElectricityPaymentActivity;

    .line 323
    .line 324
    goto :goto_7

    .line 325
    :sswitch_c
    const-string v0, "History"

    .line 326
    .line 327
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-nez v0, :cond_13

    .line 332
    .line 333
    goto :goto_7

    .line 334
    :cond_13
    sget-object v0, Lteam/opay/pay/home/MainActivity$Tab;->ME:Lteam/opay/pay/home/MainActivity$Tab;

    .line 335
    .line 336
    invoke-direct {p0, v0}, Lteam/opay/pay/home/MainActivity;->open(Lteam/opay/pay/home/MainActivity$Tab;)Z

    .line 337
    .line 338
    .line 339
    :goto_7
    if-eqz v1, :cond_14

    .line 340
    .line 341
    new-instance v0, Landroid/content/Intent;

    .line 342
    .line 343
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 347
    .line 348
    .line 349
    :cond_14
    invoke-direct {p0, v3}, Lteam/opay/pay/home/MainActivity;->logDeepLinkEvent(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getAssistantUserActions()Lp60;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-interface {v0, p1}, Lp60;->b(Landroid/content/Intent;)V

    .line 357
    .line 358
    .line 359
    goto :goto_9

    .line 360
    :cond_15
    :goto_8
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getAssistantUserActions()Lp60;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-interface {v0, p1}, Lp60;->a(Landroid/content/Intent;)V

    .line 365
    .line 366
    .line 367
    :goto_9
    return-void

    .line 368
    nop

    .line 369
    :sswitch_data_0
    .sparse-switch
        -0x462c75d3 -> :sswitch_5
        -0x37b0b0d1 -> :sswitch_4
        -0x32dbb026 -> :sswitch_3
        0x2e7b10 -> :sswitch_2
        0x30f4df -> :sswitch_1
        0x3425d9 -> :sswitch_0
    .end sparse-switch

    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    :sswitch_data_1
    .sparse-switch
        -0x6587838c -> :sswitch_c
        -0x637a65af -> :sswitch_b
        -0x46cea741 -> :sswitch_a
        0xaa2 -> :sswitch_9
        0x2063ca -> :sswitch_8
        0x281eaef7 -> :sswitch_7
        0x564db6df -> :sswitch_6
    .end sparse-switch
.end method

.method private final handleGoogleActions(Landroid/content/Intent;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lteam/opay/pay/home/MainActivity;->handleDeepLink(Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private static final holderBinding_delegate$lambda$1(Lteam/opay/pay/home/MainActivity;)Lm79;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lmf;->a()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lm79;->bind(Landroid/view/View;)Lm79;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private final initHomePlaceHolder()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->getHolderBinding()Lm79;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lm79;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    new-instance v1, Lteam/opay/pay/home/MainEntranceAdapter;

    .line 8
    .line 9
    invoke-direct {v1}, Lteam/opay/pay/home/MainEntranceAdapter;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x3

    .line 22
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->getHolderBinding()Lm79;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v0, v0, Lm79;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    .line 42
    new-instance v2, Lteam/opay/pay/home/PaymentEntranceAdapter;

    .line 43
    .line 44
    invoke-direct {v2}, Lteam/opay/pay/home/PaymentEntranceAdapter;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const/4 v4, 0x4

    .line 57
    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_0

    .line 68
    .line 69
    new-instance v2, Lcom/opay/team/newhome/view/OMainSpaceItemDecoration;

    .line 70
    .line 71
    invoke-static {v1}, Ljmf;->d(I)I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    const/4 v1, 0x6

    .line 76
    invoke-static {v1}, Ljmf;->d(I)I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    const/16 v1, 0xc

    .line 81
    .line 82
    invoke-static {v1}, Ljmf;->d(I)I

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    const/16 v11, 0x28

    .line 87
    .line 88
    const/4 v12, 0x0

    .line 89
    const/4 v4, 0x0

    .line 90
    const/4 v6, 0x4

    .line 91
    const/4 v7, 0x0

    .line 92
    const/4 v9, 0x0

    .line 93
    move-object v3, v2

    .line 94
    invoke-direct/range {v3 .. v12}, Lcom/opay/team/newhome/view/OMainSpaceItemDecoration;-><init>(IIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 98
    .line 99
    .line 100
    :cond_0
    return-void
.end method

.method private final initMainActivityDelegate()V
    .locals 3

    .line 1
    sget-object v0, Lteam/opay/swarmfoundation/OServiceManager;->a:Lteam/opay/swarmfoundation/OServiceManager$Companion;

    .line 2
    .line 3
    const-class v1, Lteam/opay/pay/home/MainActivityDelegate;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lteam/opay/swarmfoundation/OServiceManager$Companion;->a(Ljava/lang/Class;)Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lteam/opay/pay/home/MainActivity;->listMainActivityDelegate:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method private final loadTabData()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lmf;->b:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarView;->setLabelVisibilityMode(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final loadUnDoneOrder()V
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;->g()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewModel()Lteam/opay/pay/home/MainViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;->b()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Lmq8;

    .line 26
    .line 27
    invoke-direct {v2, p0}, Lmq8;-><init>(Lteam/opay/pay/home/MainActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, p0, v2}, Lteam/opay/pay/home/MainViewModel;->j0(Ljava/lang/String;Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method private static final loadUnDoneOrder$lambda$19(Lteam/opay/pay/home/MainActivity;Z)Lkotlin/Unit;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lteam/opay/pay/cashier/tobepaid/TobePaidFragment;->l:Lteam/opay/pay/cashier/tobepaid/TobePaidFragment$Companion;

    .line 4
    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lteam/opay/pay/cashier/tobepaid/TobePaidFragment$Companion;->a()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;->b()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lteam/opay/pay/cashier/tobepaid/TobePaidFragment$Companion;->b(Landroid/os/Bundle;)Landroidx/fragment/app/DialogFragment;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v0, "TobePaid"

    .line 35
    .line 36
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p1, Lteam/opay/pay/cashier/tobepaid/PaidStorage;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lteam/opay/pay/cashier/tobepaid/PaidStorage;->a()V

    .line 46
    .line 47
    .line 48
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method private final logDarkMode()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 10
    .line 11
    and-int/lit8 v0, v0, 0x30

    .line 12
    .line 13
    const/16 v1, 0x10

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x20

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const-string v0, "unknown"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v0, "opened"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string v0, "closed"

    .line 28
    .line 29
    :goto_0
    sget-object v1, Lc03;->a:Lc03;

    .line 30
    .line 31
    invoke-virtual {v1}, Lc03;->c()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const-string v1, "dark"

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const-string v1, "light"

    .line 41
    .line 42
    :goto_1
    sget-object v2, Lx7b;->a:Lx7b;

    .line 43
    .line 44
    const-string v3, "status"

    .line 45
    .line 46
    invoke-static {v3, v0}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v3, "currentThemeMode"

    .line 51
    .line 52
    invoke-static {v3, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v3, 0x2

    .line 57
    new-array v3, v3, [Lkotlin/Pair;

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    aput-object v0, v3, v4

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    aput-object v1, v3, v0

    .line 64
    .line 65
    const-string v0, "system_set_darkmode"

    .line 66
    .line 67
    invoke-virtual {v2, v0, v3}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private final logDeepLinkEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lloa;->b(Landroid/app/Activity;)Lteam/opay/pay/android/OpayApplication;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/android/OpayApplication;->getAnalytics()Lteam/opay/pay/analytics/AnalyticsBackend;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Lteam/opay/pay/analytics/AnalyticsBackend;->d(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lvk1;->a:Lvk1;

    .line 13
    .line 14
    invoke-virtual {p1}, Lvk1;->e()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getTAG()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private final onBubbleTabClicked(I)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v1, v1, Lmf;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->getBubbleMap()Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    move-object v1, p1

    .line 29
    check-cast v1, Lteam/opay/core/api/graphql/BubbleAdData;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    sget-object v0, Lx7b;->a:Lx7b;

    .line 34
    .line 35
    const/4 v4, 0x4

    .line 36
    const/4 v5, 0x0

    .line 37
    const-string v2, "Bubble_ads"

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static/range {v0 .. v5}, Lx7b;->x(Lx7b;Lteam/opay/core/api/graphql/BubbleAdData;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method private static final onCreate$lambda$8(Lteam/opay/pay/home/MainActivity;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewModel()Lteam/opay/pay/home/MainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lteam/opay/pay/home/MainViewModel;->l0(Lteam/opay/pay/home/MainActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewModel()Lteam/opay/pay/home/MainViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Lteam/opay/pay/home/MainViewModel;->Z0(Lteam/opay/pay/home/MainActivity;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewModel()Lteam/opay/pay/home/MainViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Lteam/opay/pay/home/MainViewModel;->P0(Lteam/opay/pay/home/MainActivity;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->setupContentPager()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->setupBottomNavigation()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewModel()Lteam/opay/pay/home/MainViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lteam/opay/pay/home/MainViewModel;->V0()Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lpq8;

    .line 37
    .line 38
    invoke-direct {v1, p0}, Lpq8;-><init>(Lteam/opay/pay/home/MainActivity;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Lag8;Lvfa;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->getSession()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-direct {p0, v0}, Lteam/opay/pay/home/MainActivity;->handleGoogleActions(Landroid/content/Intent;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->logDarkMode()V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lx7b;->a:Lx7b;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 68
    .line 69
    const/high16 v2, 0x1000000

    .line 70
    .line 71
    and-int/2addr v1, v2

    .line 72
    const/4 v2, 0x0

    .line 73
    const/4 v3, 0x1

    .line 74
    if-eqz v1, :cond_0

    .line 75
    .line 76
    const/4 v1, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    const/4 v1, 0x0

    .line 79
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v4, "hardware"

    .line 84
    .line 85
    invoke-static {v4, v1}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    new-array v4, v3, [Lkotlin/Pair;

    .line 90
    .line 91
    aput-object v1, v4, v2

    .line 92
    .line 93
    const-string v1, "opay_show"

    .line 94
    .line 95
    invoke-virtual {v0, v1, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p0}, Lum8;->f(Landroid/content/Context;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_1

    .line 103
    .line 104
    sget-object v4, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->a:Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;

    .line 105
    .line 106
    invoke-virtual {v4}, Lteam/opay/pay/analytics/AnalyticsTimeAndSchedule;->g()V

    .line 107
    .line 108
    .line 109
    :cond_1
    new-array v2, v2, [Lkotlin/Pair;

    .line 110
    .line 111
    invoke-virtual {v0, v1, v2}, Lx7b;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->loadTabData()V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->loadUnDoneOrder()V

    .line 118
    .line 119
    .line 120
    sget-object v0, Lzl8;->a:Lzl8;

    .line 121
    .line 122
    invoke-virtual {v0, p0}, Lzl8;->a(Lteam/opay/swarmfoundation/login/ILoginListener;)V

    .line 123
    .line 124
    .line 125
    sget-object v0, Lteam/opay/pay/home/MainActivity$Tab;->HOME:Lteam/opay/pay/home/MainActivity$Tab;

    .line 126
    .line 127
    invoke-virtual {p0, v0}, Lteam/opay/pay/home/MainActivity;->switchTab(Lteam/opay/pay/home/MainActivity$Tab;)V

    .line 128
    .line 129
    .line 130
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->addObserve()V

    .line 131
    .line 132
    .line 133
    sget-object v0, Lcom/opay/team/home/api/HomeApiService;->a:Lcom/opay/team/home/api/HomeApiService;

    .line 134
    .line 135
    invoke-virtual {v0, p0}, Lcom/opay/team/home/api/HomeApiService;->j(Lag8;)V

    .line 136
    .line 137
    .line 138
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->getTopBottomViewModel()Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0, p0}, Lcom/opay/team/newhome/home/TopOrBottomPopViewModel;->u0(Lag8;)V

    .line 143
    .line 144
    .line 145
    return v3
.end method

.method private static final onCreate$lambda$8$lambda$7(Lteam/opay/pay/home/MainActivity;Lteam/opay/pay/home/MainActivity$Tab;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lteam/opay/pay/home/MainActivity;->switchTab(Lteam/opay/pay/home/MainActivity$Tab;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final open(Lteam/opay/pay/home/MainActivity$Tab;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->clickedTab:Lteam/opay/pay/home/MainActivity$Tab;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->getHolderBinding()Lm79;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lm79;->d:Landroidx/constraintlayout/widget/Group;

    .line 12
    .line 13
    const-string v2, "holderList"

    .line 14
    .line 15
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lteam/opay/pay/home/MainActivity$Tab;->HOME:Lteam/opay/pay/home/MainActivity$Tab;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne p1, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewModel()Lteam/opay/pay/home/MainViewModel;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lteam/opay/pay/home/MainViewModel;->H0()Landroidx/lifecycle/MutableLiveData;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v2, 0x0

    .line 46
    :goto_0
    invoke-static {v0, v2}, Lteam/opay/core/android/ViewKt;->x(Landroid/view/View;Z)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lteam/opay/pay/home/MainActivity;->clickedTab:Lteam/opay/pay/home/MainActivity$Tab;

    .line 50
    .line 51
    sget-object v0, Lx7b;->a:Lx7b;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v5, "open_"

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, "_bottom_click"

    .line 71
    .line 72
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    new-array v4, v1, [Lkotlin/Pair;

    .line 80
    .line 81
    invoke-virtual {v0, v2, v4}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v0, v0, Lmf;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 89
    .line 90
    invoke-direct {p0, p1}, Lteam/opay/pay/home/MainActivity;->getIndexForTab(Lteam/opay/pay/home/MainActivity$Tab;)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->m(IZ)V

    .line 95
    .line 96
    .line 97
    return v3
.end method

.method private final setupBottomNavigation()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lmf;->b:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 6
    .line 7
    new-instance v1, Loq8;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Loq8;-><init>(Lteam/opay/pay/home/MainActivity;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarView;->setLabelVisibilityMode(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget v2, Lteam/opay/pay/R$id;->tab_me:I

    .line 24
    .line 25
    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->showDotOrHide()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private static final setupBottomNavigation$lambda$40$lambda$39(Lteam/opay/pay/home/MainActivity;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    sget v0, Lteam/opay/pay/R$id;->tab_card:I

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    sget-object p1, Lteam/opay/pay/home/MainActivity$Tab;->CARD:Lteam/opay/pay/home/MainActivity$Tab;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget v0, Lteam/opay/pay/R$id;->tab_fin:I

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    sget-object p1, Lteam/opay/pay/home/MainActivity$Tab;->FIN:Lteam/opay/pay/home/MainActivity$Tab;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    sget v0, Lteam/opay/pay/R$id;->tab_home:I

    .line 25
    .line 26
    if-ne p1, v0, :cond_2

    .line 27
    .line 28
    sget-object p1, Lteam/opay/pay/home/MainActivity$Tab;->HOME:Lteam/opay/pay/home/MainActivity$Tab;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget v0, Lteam/opay/pay/R$id;->tab_reward:I

    .line 32
    .line 33
    if-ne p1, v0, :cond_3

    .line 34
    .line 35
    sget-object p1, Lteam/opay/pay/home/MainActivity$Tab;->REWARD:Lteam/opay/pay/home/MainActivity$Tab;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    sget v0, Lteam/opay/pay/R$id;->tab_me:I

    .line 39
    .line 40
    if-ne p1, v0, :cond_4

    .line 41
    .line 42
    sget-object p1, Lteam/opay/pay/home/MainActivity$Tab;->ME:Lteam/opay/pay/home/MainActivity$Tab;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    sget-object p1, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 46
    .line 47
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lteam/opay/pay/envconfigapi/ConfigStorage;->i()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_5

    .line 56
    .line 57
    sget-object p1, Lteam/opay/pay/home/MainActivity$Tab;->HOME:Lteam/opay/pay/home/MainActivity$Tab;

    .line 58
    .line 59
    :goto_0
    invoke-direct {p0, p1}, Lteam/opay/pay/home/MainActivity;->open(Lteam/opay/pay/home/MainActivity$Tab;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    return p0

    .line 64
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string p1, "should never happen"

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method

.method private final setupContentPager()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewModel()Lteam/opay/pay/home/MainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v1, v1, Lmf;->b:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Lteam/opay/pay/home/MainViewModel;->v1(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lmf;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v0, v0, Lmf;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    instance-of v2, v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    if-eqz v0, :cond_1

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    instance-of v1, v1, Lcom/opay/team/newhome/view/NoAlphaItemAnimator;

    .line 60
    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    new-instance v1, Lcom/opay/team/newhome/view/NoAlphaItemAnimator;

    .line 64
    .line 65
    invoke-direct {v1}, Lcom/opay/team/newhome/view/NoAlphaItemAnimator;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v0, v0, Lmf;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 76
    .line 77
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->getTabAdapter()Lteam/opay/pay/android/SimplePagerAdapter;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v0, v0, Lmf;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 89
    .line 90
    new-instance v1, Lteam/opay/pay/home/MainActivity$e;

    .line 91
    .line 92
    invoke-direct {v1, p0}, Lteam/opay/pay/home/MainActivity$e;-><init>(Lteam/opay/pay/home/MainActivity;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->j(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private final showDotOrHide()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    sget-object v0, Llhc;->a:Llhc;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Llhc;->a(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v1, v1, Lmf;->b:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v1, v3

    .line 24
    :goto_0
    instance-of v4, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    check-cast v1, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v1, v3

    .line 32
    :goto_1
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const/4 v4, 0x4

    .line 35
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    move-object v4, v3

    .line 41
    :goto_2
    instance-of v5, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 42
    .line 43
    if-eqz v5, :cond_3

    .line 44
    .line 45
    move-object v3, v4

    .line 46
    check-cast v3, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 47
    .line 48
    :cond_3
    const/4 v4, -0x1

    .line 49
    if-eqz v0, :cond_6

    .line 50
    .line 51
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->dotView:Landroid/view/View;

    .line 52
    .line 53
    if-nez v0, :cond_4

    .line 54
    .line 55
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget v5, Lteam/opay/pay/R$layout;->item_me_red_dot:I

    .line 60
    .line 61
    invoke-virtual {v0, v5, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lteam/opay/pay/home/MainActivity;->dotView:Landroid/view/View;

    .line 66
    .line 67
    :cond_4
    if-eqz v3, :cond_7

    .line 68
    .line 69
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->dotView:Landroid/view/View;

    .line 70
    .line 71
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eq v0, v4, :cond_5

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_5
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->dotView:Landroid/view/View;

    .line 82
    .line 83
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_6
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->dotView:Landroid/view/View;

    .line 88
    .line 89
    if-eqz v0, :cond_7

    .line 90
    .line 91
    if-eqz v3, :cond_7

    .line 92
    .line 93
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eq v0, v4, :cond_7

    .line 101
    .line 102
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->dotView:Landroid/view/View;

    .line 103
    .line 104
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    :cond_7
    :goto_3
    return-void
.end method

.method private final showTabBubbles(Ljava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/core/api/graphql/BubbleAdData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static/range {p0 .. p0}, Ljmf;->r(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x5

    .line 6
    div-int/2addr v0, v1

    .line 7
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_b

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lteam/opay/core/api/graphql/BubbleAdData;

    .line 22
    .line 23
    new-instance v10, Lcom/opay/team/newhome/home/ImageLottieView;

    .line 24
    .line 25
    const/4 v8, 0x6

    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    move-object v4, v10

    .line 30
    move-object/from16 v5, p0

    .line 31
    .line 32
    invoke-direct/range {v4 .. v9}, Lcom/opay/team/newhome/home/ImageLottieView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Lteam/opay/core/api/graphql/BubbleAdData;->a()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    sparse-switch v5, :sswitch_data_0

    .line 44
    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :sswitch_0
    const-string v5, "bubble_ad_home"

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_1

    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    iget-object v4, v4, Lmf;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 63
    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    invoke-virtual {v4}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    sget v4, Lteam/opay/pay/R$id;->bubble_home:I

    .line 74
    .line 75
    invoke-virtual {v10, v4}, Landroid/view/View;->setId(I)V

    .line 76
    .line 77
    .line 78
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/home/MainActivity;->getBubbleMap()Ljava/util/HashMap;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    sget-object v4, Lx7b;->a:Lx7b;

    .line 94
    .line 95
    const/4 v8, 0x4

    .line 96
    const/4 v9, 0x0

    .line 97
    const-string v6, "Bubble_ads"

    .line 98
    .line 99
    const/4 v7, 0x0

    .line 100
    move-object v5, v3

    .line 101
    invoke-static/range {v4 .. v9}, Lx7b;->F(Lx7b;Lteam/opay/core/api/graphql/BubbleAdData;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v1}, Ljmf;->d(I)I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    :goto_1
    move/from16 v16, v4

    .line 109
    .line 110
    goto/16 :goto_4

    .line 111
    .line 112
    :sswitch_1
    const-string v5, "bubble_ad_rewards"

    .line 113
    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-nez v4, :cond_3

    .line 119
    .line 120
    goto/16 :goto_3

    .line 121
    .line 122
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    iget-object v4, v4, Lmf;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 127
    .line 128
    if-eqz v4, :cond_4

    .line 129
    .line 130
    invoke-virtual {v4}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    const/4 v5, 0x1

    .line 135
    if-ne v4, v5, :cond_4

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_4
    sget v4, Lteam/opay/pay/R$id;->bubble_rewards:I

    .line 139
    .line 140
    invoke-virtual {v10, v4}, Landroid/view/View;->setId(I)V

    .line 141
    .line 142
    .line 143
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/home/MainActivity;->getBubbleMap()Ljava/util/HashMap;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    sget-object v4, Lx7b;->a:Lx7b;

    .line 159
    .line 160
    const/4 v8, 0x4

    .line 161
    const/4 v9, 0x0

    .line 162
    const-string v6, "Bubble_ads"

    .line 163
    .line 164
    const/4 v7, 0x0

    .line 165
    move-object v5, v3

    .line 166
    invoke-static/range {v4 .. v9}, Lx7b;->F(Lx7b;Lteam/opay/core/api/graphql/BubbleAdData;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v1}, Ljmf;->d(I)I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    add-int/2addr v4, v0

    .line 174
    goto :goto_1

    .line 175
    :sswitch_2
    const-string v5, "bubble_ad_cards"

    .line 176
    .line 177
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-nez v4, :cond_5

    .line 182
    .line 183
    goto/16 :goto_3

    .line 184
    .line 185
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    iget-object v4, v4, Lmf;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 190
    .line 191
    invoke-virtual {v4}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    const/4 v5, 0x3

    .line 196
    if-eq v4, v5, :cond_0

    .line 197
    .line 198
    sget v4, Lteam/opay/pay/R$id;->bubble_cards:I

    .line 199
    .line 200
    invoke-virtual {v10, v4}, Landroid/view/View;->setId(I)V

    .line 201
    .line 202
    .line 203
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/home/MainActivity;->getBubbleMap()Ljava/util/HashMap;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    sget-object v4, Lx7b;->a:Lx7b;

    .line 219
    .line 220
    const/4 v8, 0x4

    .line 221
    const/4 v9, 0x0

    .line 222
    const-string v6, "Bubble_ads"

    .line 223
    .line 224
    const/4 v7, 0x0

    .line 225
    move-object v5, v3

    .line 226
    invoke-static/range {v4 .. v9}, Lx7b;->F(Lx7b;Lteam/opay/core/api/graphql/BubbleAdData;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    invoke-static {v1}, Ljmf;->d(I)I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    mul-int/lit8 v5, v0, 0x3

    .line 234
    .line 235
    :goto_2
    add-int/2addr v4, v5

    .line 236
    goto/16 :goto_1

    .line 237
    .line 238
    :sswitch_3
    const-string v5, "bubble_ad_me"

    .line 239
    .line 240
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    if-nez v4, :cond_6

    .line 245
    .line 246
    goto :goto_3

    .line 247
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    iget-object v4, v4, Lmf;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 252
    .line 253
    if-eqz v4, :cond_7

    .line 254
    .line 255
    invoke-virtual {v4}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    const/4 v5, 0x4

    .line 260
    if-ne v4, v5, :cond_7

    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :cond_7
    sget v4, Lteam/opay/pay/R$id;->bubble_me:I

    .line 265
    .line 266
    invoke-virtual {v10, v4}, Landroid/view/View;->setId(I)V

    .line 267
    .line 268
    .line 269
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/home/MainActivity;->getBubbleMap()Ljava/util/HashMap;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    sget-object v4, Lx7b;->a:Lx7b;

    .line 285
    .line 286
    const/4 v8, 0x4

    .line 287
    const/4 v9, 0x0

    .line 288
    const-string v6, "Bubble_ads"

    .line 289
    .line 290
    const/4 v7, 0x0

    .line 291
    move-object v5, v3

    .line 292
    invoke-static/range {v4 .. v9}, Lx7b;->F(Lx7b;Lteam/opay/core/api/graphql/BubbleAdData;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    invoke-static {v1}, Ljmf;->d(I)I

    .line 296
    .line 297
    .line 298
    move-result v4

    .line 299
    mul-int/lit8 v5, v0, 0x4

    .line 300
    .line 301
    goto :goto_2

    .line 302
    :sswitch_4
    const-string v5, "bubble_ad_finance"

    .line 303
    .line 304
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    if-nez v4, :cond_8

    .line 309
    .line 310
    :goto_3
    return-void

    .line 311
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    iget-object v4, v4, Lmf;->c:Landroidx/viewpager2/widget/ViewPager2;

    .line 316
    .line 317
    if-eqz v4, :cond_9

    .line 318
    .line 319
    invoke-virtual {v4}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    const/4 v5, 0x2

    .line 324
    if-ne v4, v5, :cond_9

    .line 325
    .line 326
    goto/16 :goto_0

    .line 327
    .line 328
    :cond_9
    sget v4, Lteam/opay/pay/R$id;->bubble_finance:I

    .line 329
    .line 330
    invoke-virtual {v10, v4}, Landroid/view/View;->setId(I)V

    .line 331
    .line 332
    .line 333
    invoke-direct/range {p0 .. p0}, Lteam/opay/pay/home/MainActivity;->getBubbleMap()Ljava/util/HashMap;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    sget-object v4, Lx7b;->a:Lx7b;

    .line 349
    .line 350
    const/4 v8, 0x4

    .line 351
    const/4 v9, 0x0

    .line 352
    const-string v6, "Bubble_ads"

    .line 353
    .line 354
    const/4 v7, 0x0

    .line 355
    move-object v5, v3

    .line 356
    invoke-static/range {v4 .. v9}, Lx7b;->F(Lx7b;Lteam/opay/core/api/graphql/BubbleAdData;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    invoke-static {v1}, Ljmf;->d(I)I

    .line 360
    .line 361
    .line 362
    move-result v4

    .line 363
    mul-int/lit8 v5, v0, 0x2

    .line 364
    .line 365
    goto/16 :goto_2

    .line 366
    .line 367
    :goto_4
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 368
    .line 369
    const/4 v5, -0x2

    .line 370
    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 371
    .line 372
    .line 373
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    iget-object v5, v5, Lmf;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 378
    .line 379
    invoke-virtual {v5, v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    .line 381
    .line 382
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 383
    .line 384
    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 385
    .line 386
    .line 387
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 388
    .line 389
    invoke-direct {v4}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 390
    .line 391
    .line 392
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    iget-object v5, v5, Lmf;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 397
    .line 398
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->q(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    .line 402
    .line 403
    .line 404
    move-result v12

    .line 405
    const/4 v14, 0x0

    .line 406
    const/4 v15, 0x6

    .line 407
    const/4 v13, 0x6

    .line 408
    move-object v11, v4

    .line 409
    invoke-virtual/range {v11 .. v16}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    .line 413
    .line 414
    .line 415
    move-result v18

    .line 416
    sget v20, Lteam/opay/pay/R$id;->bottom_navigation_bar:I

    .line 417
    .line 418
    const/16 v21, 0x3

    .line 419
    .line 420
    const/16 v22, 0x0

    .line 421
    .line 422
    const/16 v19, 0x4

    .line 423
    .line 424
    move-object/from16 v17, v4

    .line 425
    .line 426
    invoke-virtual/range {v17 .. v22}, Landroidx/constraintlayout/widget/ConstraintSet;->u(IIIII)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    .line 430
    .line 431
    .line 432
    move-result v5

    .line 433
    const/16 v6, 0xa

    .line 434
    .line 435
    invoke-static {v6}, Ljmf;->d(I)I

    .line 436
    .line 437
    .line 438
    move-result v6

    .line 439
    sub-int v6, v0, v6

    .line 440
    .line 441
    invoke-virtual {v4, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->x(II)V

    .line 442
    .line 443
    .line 444
    invoke-virtual/range {p0 .. p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    iget-object v5, v5, Lmf;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 449
    .line 450
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 451
    .line 452
    .line 453
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 454
    .line 455
    const/16 v5, 0x1d

    .line 456
    .line 457
    if-lt v4, v5, :cond_a

    .line 458
    .line 459
    const/4 v4, 0x0

    .line 460
    invoke-static {v10, v4}, Lkq8;->a(Lcom/opay/team/newhome/home/ImageLottieView;Z)V

    .line 461
    .line 462
    .line 463
    :cond_a
    invoke-virtual {v3}, Lteam/opay/core/api/graphql/BubbleAdData;->e()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v5

    .line 467
    const/16 v11, 0x26

    .line 468
    .line 469
    const/4 v12, 0x0

    .line 470
    const/4 v6, 0x0

    .line 471
    const/4 v7, 0x0

    .line 472
    const/4 v8, 0x0

    .line 473
    const/4 v9, 0x1

    .line 474
    const/4 v3, 0x0

    .line 475
    move-object v4, v10

    .line 476
    move v10, v3

    .line 477
    invoke-static/range {v4 .. v12}, Lcom/opay/team/newhome/home/ImageLottieView;->n(Lcom/opay/team/newhome/home/ImageLottieView;Ljava/lang/String;IIZZZILjava/lang/Object;)V

    .line 478
    .line 479
    .line 480
    goto/16 :goto_0

    .line 481
    .line 482
    :cond_b
    return-void

    .line 483
    :sswitch_data_0
    .sparse-switch
        -0x6cea3eaf -> :sswitch_4
        -0x61b2b23f -> :sswitch_3
        -0x3aa1b566 -> :sswitch_2
        0x78c089b -> :sswitch_1
        0x402ecec8 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final tabAdapter_delegate$lambda$4(Lteam/opay/pay/home/MainActivity;)Lteam/opay/pay/android/SimplePagerAdapter;
    .locals 4

    .line 1
    new-instance v0, Lteam/opay/pay/android/SimplePagerAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->getTabs()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-instance v2, Lteam/opay/pay/home/TabFactory;

    .line 12
    .line 13
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->getTabs()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-direct {v2, v3}, Lteam/opay/pay/home/TabFactory;-><init>(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0, v1, v2}, Lteam/opay/pay/android/SimplePagerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;ILteam/opay/pay/android/SimplePagerAdapter$a;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method private static final tabs_delegate$lambda$2()Ljava/util/List;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lteam/opay/pay/home/MainActivity$Tab;

    .line 3
    .line 4
    sget-object v1, Lteam/opay/pay/home/MainActivity$Tab;->HOME:Lteam/opay/pay/home/MainActivity$Tab;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lteam/opay/pay/home/MainActivity$Tab;->REWARD:Lteam/opay/pay/home/MainActivity$Tab;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lteam/opay/pay/home/MainActivity$Tab;->FIN:Lteam/opay/pay/home/MainActivity$Tab;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lteam/opay/pay/home/MainActivity$Tab;->CARD:Lteam/opay/pay/home/MainActivity$Tab;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lteam/opay/pay/home/MainActivity$Tab;->ME:Lteam/opay/pay/home/MainActivity$Tab;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->n([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method private static final viewBinding_delegate$lambda$0(Lteam/opay/pay/home/MainActivity;)Lmf;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lmf;->inflate(Landroid/view/LayoutInflater;)Lmf;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public final callOpaySupport()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewModel()Lteam/opay/pay/home/MainViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/pay/home/MainViewModel;->z0()Lteam/opay/core/api/graphql/CommonConfigBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lteam/opay/core/api/graphql/CommonConfigBean;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    new-instance v1, Landroid/content/Intent;

    .line 18
    .line 19
    const-string v2, "android.intent.action.DIAL"

    .line 20
    .line 21
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    sget v0, Lteam/opay/pay/R$string;->opay_hotline_number:I

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v2, "getString(...)"

    .line 33
    .line 34
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v3, "tel:"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final getAssistantUserActions()Lp60;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->assistantUserActions:Lp60;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "assistantUserActions"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getClickedTab()Lteam/opay/pay/home/MainActivity$Tab;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->clickedTab:Lteam/opay/pay/home/MainActivity$Tab;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDotView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->dotView:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNeedPaddingBottom()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/MainActivity;->needPaddingBottom:Z

    .line 2
    .line 3
    return v0
.end method

.method public getNeedPaddingTop()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/home/MainActivity;->needPaddingTop:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getSettingsStorage()Lteam/opay/core/settings/SettingsStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->settingsStorage:Lteam/opay/core/settings/SettingsStorage;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "settingsStorage"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->TAG$1:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getViewBinding()Lmf;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->viewBinding$delegate:Lid8;

    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf;

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lxyf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    move-result-object v0

    return-object v0
.end method

.method public final getViewModel()Lteam/opay/pay/home/MainViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/home/MainActivity;->viewModel$delegate:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/home/MainViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public onActionBarBack()V
    .locals 1

    .line 1
    invoke-super {p0}, Lteam/opay/pay/android/BaseActivity;->onActionBarBack()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lteam/opay/pay/home/MainActivity;->DEFAULT_TAB:Lteam/opay/pay/home/MainActivity$Tab;

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lteam/opay/pay/home/MainActivity;->open(Lteam/opay/pay/home/MainActivity$Tab;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onBackPressed()V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getTAG()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->exitBy2Click()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onCancel()V
    .locals 0

    .line 1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-super {p0, v0}, Lteam/opay/pay/home/Hilt_MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    .line 4
    .line 5
    sget-object v0, Llhc;->a:Llhc;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0, v1}, Llhc;->b(I)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->initMainActivityDelegate()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lteam/opay/pay/home/MainActivity;->delegateOnCreate(Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p1, p1, Lmf;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 22
    .line 23
    const-string v0, "mainLayout"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lnq8;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lnq8;-><init>(Lteam/opay/pay/home/MainActivity;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0}, Lgfd;->a(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lteam/opay/pay/util/FlowBus;->a:Lteam/opay/pay/util/FlowBus;

    .line 37
    .line 38
    new-instance v0, Lteam/opay/pay/home/MainActivity$c;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lteam/opay/pay/home/MainActivity$c;-><init>(Lteam/opay/pay/home/MainActivity;)V

    .line 41
    .line 42
    .line 43
    const-string v1, "event_dot_change"

    .line 44
    .line 45
    invoke-virtual {p1, p0, v1, v0}, Lteam/opay/pay/util/FlowBus;->b(Lag8;Ljava/lang/Object;La66;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Lteam/opay/pay/home/Hilt_MainActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatView;->e:Lcom/opay/team/newhome/redpackage/view/RedPackageFloatView$Companion;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/opay/team/newhome/redpackage/view/RedPackageFloatView$Companion;->a()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lx7b;->a:Lx7b;

    .line 10
    .line 11
    invoke-virtual {v0}, Lx7b;->l()Lteam/opay/pay/util/SingleLiveEvent;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lteam/opay/pay/home/MainActivity;->adShowObserver:Lvfa;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->removeObserver(Lvfa;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lx7b;->l()Lteam/opay/pay/util/SingleLiveEvent;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, v2}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lx7b;->k()Lteam/opay/pay/util/SingleLiveEvent;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v3, p0, Lteam/opay/pay/home/MainActivity;->adClickObserver:Lvfa;

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Landroidx/lifecycle/LiveData;->removeObserver(Lvfa;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lx7b;->k()Lteam/opay/pay/util/SingleLiveEvent;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v2}, Lteam/opay/pay/util/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->delegateOnDestroy()V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lzl8;->a:Lzl8;

    .line 48
    .line 49
    invoke-virtual {v0, p0}, Lzl8;->d(Lteam/opay/swarmfoundation/login/ILoginListener;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lteam/opay/pay/home/MainActivity;->delegateOnNewIntent(Landroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lteam/opay/pay/home/MainActivity;->handleGoogleActions(Landroid/content/Intent;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->delegateOnPause()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "grantResults"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/pay/home/MainActivity;->delegateOnRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onRestart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->delegateOnRestart()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "savedInstanceState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lteam/opay/pay/home/MainActivity;->delegateOnRestoreInstanceState(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lteam/opay/pay/android/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lteam/opay/pay/home/MainActivity;->initHolder:Z

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-boolean v1, p0, Lteam/opay/pay/home/MainActivity;->initHolder:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->initHomePlaceHolder()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->delegateOnResume()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Lmf;->b:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getSelectedItemId()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sget v2, Lteam/opay/pay/R$id;->tab_fin:I

    .line 28
    .line 29
    if-ne v0, v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v3, "SELECTED_TAB"

    .line 36
    .line 37
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p0}, Lteam/opay/pay/home/MainActivity;->getViewBinding()Lmf;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-object v2, v2, Lmf;->b:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->enableAppLock()V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .line 1
    const-string v0, "outState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lteam/opay/pay/home/MainActivity;->delegateOnSaveInstanceState(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Lteam/opay/core/android/InjectableActivity;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->delegateOnStart()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lteam/opay/pay/android/BaseActivity;->onStop()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->delegateOnStop()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    sget-object v0, Ltj8;->a:Ltj8;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ltj8;->b(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onTabDataLoadFinished()V
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/home/d$a;->a(Lteam/opay/pay/home/d;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lteam/opay/pay/home/MainActivity;->loadTabData()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setAssistantUserActions(Lp60;)V
    .locals 1
    .param p1    # Lp60;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/home/MainActivity;->assistantUserActions:Lp60;

    .line 7
    .line 8
    return-void
.end method

.method public final setDotView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lteam/opay/pay/home/MainActivity;->dotView:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public setNeedPaddingBottom(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/home/MainActivity;->needPaddingBottom:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNeedPaddingTop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/home/MainActivity;->needPaddingTop:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setSettingsStorage(Lteam/opay/core/settings/SettingsStorage;)V
    .locals 1
    .param p1    # Lteam/opay/core/settings/SettingsStorage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/home/MainActivity;->settingsStorage:Lteam/opay/core/settings/SettingsStorage;

    .line 7
    .line 8
    return-void
.end method

.method public setTabFriendsMessage(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/home/d$a;->b(Lteam/opay/pay/home/d;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final switchTab(Lteam/opay/pay/home/MainActivity$Tab;)V
    .locals 1
    .param p1    # Lteam/opay/pay/home/MainActivity$Tab;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tab"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lteam/opay/pay/home/MainActivity;->open(Lteam/opay/pay/home/MainActivity$Tab;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
