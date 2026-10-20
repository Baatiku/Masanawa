.class public final Lteam/opay/business/picture/widget/PickImageView;
.super Lteam/opay/business/widget/LifecycleFrameLayout;
.source "PickImageView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/business/picture/widget/PickImageView$SizeObserver;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008C\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0002\u00a6\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u000cJ\u000f\u0010\u0011\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u000cJ!\u0010\u0014\u001a\u00020\n2\u0010\u0008\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0015\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u0004\u0018\u00010\u001d\u00a2\u0006\u0004\u0008!\u0010\"J\u0015\u0010%\u001a\u00020\n2\u0006\u0010$\u001a\u00020#\u00a2\u0006\u0004\u0008%\u0010&J\r\u0010\'\u001a\u00020\n\u00a2\u0006\u0004\u0008\'\u0010\u000cJ\u001f\u0010(\u001a\u00020\n2\u0010\u0008\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0012\u00a2\u0006\u0004\u0008(\u0010\u0015R\"\u0010/\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\"\u00103\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00080\u0010*\u001a\u0004\u00081\u0010,\"\u0004\u00082\u0010.R\"\u00107\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00084\u0010*\u001a\u0004\u00085\u0010,\"\u0004\u00086\u0010.R\"\u0010;\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u0010*\u001a\u0004\u00089\u0010,\"\u0004\u0008:\u0010.R\"\u0010?\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010*\u001a\u0004\u0008=\u0010,\"\u0004\u0008>\u0010.R\"\u0010C\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008@\u0010*\u001a\u0004\u0008A\u0010,\"\u0004\u0008B\u0010.R\"\u0010F\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010\u000f\"\u0004\u0008G\u0010HR\"\u0010L\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008I\u0010E\u001a\u0004\u0008J\u0010\u000f\"\u0004\u0008K\u0010HR\"\u0010P\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008M\u0010E\u001a\u0004\u0008N\u0010\u000f\"\u0004\u0008O\u0010HR\"\u0010T\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Q\u0010E\u001a\u0004\u0008R\u0010\u000f\"\u0004\u0008S\u0010HR\"\u0010X\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008U\u0010E\u001a\u0004\u0008V\u0010\u000f\"\u0004\u0008W\u0010HR\"\u0010\\\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010E\u001a\u0004\u0008Z\u0010\u000f\"\u0004\u0008[\u0010HR(\u0010a\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0004\u0008]\u0010*\u0012\u0004\u0008`\u0010\u000c\u001a\u0004\u0008^\u0010,\"\u0004\u0008_\u0010.R\u001c\u0010d\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u000c\n\u0004\u0008b\u0010*\u0012\u0004\u0008c\u0010\u000cR\u0016\u0010f\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008e\u0010*R\u0014\u0010j\u001a\u00020g8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR\u0016\u0010l\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008k\u0010*R\u0016\u0010n\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010*R\u0016\u0010p\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010*R\u0016\u0010r\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008q\u0010*R*\u0010x\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008s\u0010t\u001a\u0004\u0008u\u0010v\"\u0004\u0008w\u0010\u0015R*\u0010|\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008y\u0010t\u001a\u0004\u0008z\u0010v\"\u0004\u0008{\u0010\u0015R4\u0010\u0083\u0001\u001a\u0010\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u0006\u0018\u00010}8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0004\u0008(\u0010~\u001a\u0005\u0008\u007f\u0010\u0080\u0001\"\u0006\u0008\u0081\u0001\u0010\u0082\u0001R6\u0010\u0087\u0001\u001a\u0010\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u0006\u0018\u00010}8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0084\u0001\u0010~\u001a\u0006\u0008\u0085\u0001\u0010\u0080\u0001\"\u0006\u0008\u0086\u0001\u0010\u0082\u0001R:\u0010\u008d\u0001\u001a\u0014\u0012\u0005\u0012\u00030\u0088\u0001\u0012\u0007\u0012\u0005\u0018\u00010\u0089\u0001\u0018\u00010}8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u008a\u0001\u0010~\u001a\u0006\u0008\u008b\u0001\u0010\u0080\u0001\"\u0006\u0008\u008c\u0001\u0010\u0082\u0001R \u0010\u0092\u0001\u001a\u00030\u008e\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0011\u0010\u008f\u0001\u001a\u0006\u0008\u0090\u0001\u0010\u0091\u0001R \u0010\u0096\u0001\u001a\u00030\u0093\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0017\u0010\u008f\u0001\u001a\u0006\u0008\u0094\u0001\u0010\u0095\u0001R!\u0010\u009b\u0001\u001a\u00030\u0097\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0098\u0001\u0010\u008f\u0001\u001a\u0006\u0008\u0099\u0001\u0010\u009a\u0001R!\u0010\u00a0\u0001\u001a\u00030\u009c\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u009d\u0001\u0010\u008f\u0001\u001a\u0006\u0008\u009e\u0001\u0010\u009f\u0001R!\u0010\u00a5\u0001\u001a\u00030\u00a1\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00a2\u0001\u0010\u008f\u0001\u001a\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001\u00a8\u0006\u00a7\u0001"
    }
    d2 = {
        "Lteam/opay/business/picture/widget/PickImageView;",
        "Lteam/opay/business/widget/LifecycleFrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "T",
        "()V",
        "",
        "H",
        "()Z",
        "L",
        "C",
        "Lteam/opay/core/common/android/event/CallbackWrapper;",
        "callback",
        "P",
        "(Lteam/opay/core/common/android/event/CallbackWrapper;)V",
        "Landroidx/fragment/app/FragmentActivity;",
        "D",
        "(Landroid/content/Context;)Landroidx/fragment/app/FragmentActivity;",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "Lteam/opay/business/picture/adapter/SourceData;",
        "sourceData",
        "setSourceData",
        "(Lteam/opay/business/picture/adapter/SourceData;)V",
        "getSourceData",
        "()Lteam/opay/business/picture/adapter/SourceData;",
        "",
        "url",
        "setDefaultSample",
        "(Ljava/lang/Object;)V",
        "S",
        "z",
        "d",
        "I",
        "getSizekb",
        "()I",
        "setSizekb",
        "(I)V",
        "sizekb",
        "e",
        "getMaxnum",
        "setMaxnum",
        "maxnum",
        "f",
        "getItemHeight",
        "setItemHeight",
        "itemHeight",
        "g",
        "getItemWith",
        "setItemWith",
        "itemWith",
        "h",
        "getAddLayoutRes",
        "setAddLayoutRes",
        "addLayoutRes",
        "i",
        "getImageLayoutRes",
        "setImageLayoutRes",
        "imageLayoutRes",
        "j",
        "Z",
        "isShowAdd",
        "setShowAdd",
        "(Z)V",
        "k",
        "getCanPick",
        "setCanPick",
        "canPick",
        "l",
        "getCanCamera",
        "setCanCamera",
        "canCamera",
        "m",
        "getCanDelete",
        "setCanDelete",
        "canDelete",
        "n",
        "getCanLocation",
        "setCanLocation",
        "canLocation",
        "o",
        "getDrawWaterTime",
        "setDrawWaterTime",
        "drawWaterTime",
        "p",
        "getCameraType",
        "setCameraType",
        "getCameraType$annotations",
        "cameraType",
        "q",
        "getFileType$annotations",
        "fileType",
        "r",
        "radiusImage",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "s",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "t",
        "managerType",
        "u",
        "horizontalSpace",
        "v",
        "verticalSpace",
        "w",
        "spanCount",
        "x",
        "Lteam/opay/core/common/android/event/CallbackWrapper;",
        "getMAddClickWithoutTake",
        "()Lteam/opay/core/common/android/event/CallbackWrapper;",
        "setMAddClickWithoutTake",
        "mAddClickWithoutTake",
        "y",
        "getMSelectWayCallback",
        "setMSelectWayCallback",
        "mSelectWayCallback",
        "Lteam/opay/core/common/android/event/CallbackWrapper2;",
        "Lteam/opay/core/common/android/event/CallbackWrapper2;",
        "getMImageClick",
        "()Lteam/opay/core/common/android/event/CallbackWrapper2;",
        "setMImageClick",
        "(Lteam/opay/core/common/android/event/CallbackWrapper2;)V",
        "mImageClick",
        "A",
        "getMDeleteClick",
        "setMDeleteClick",
        "mDeleteClick",
        "Landroid/net/Uri;",
        "",
        "B",
        "getMSelectFileCallBack",
        "setMSelectFileCallBack",
        "mSelectFileCallBack",
        "Lteam/opay/business/picture/adapter/AddAdapter;",
        "Lid8;",
        "getAddAdapter",
        "()Lteam/opay/business/picture/adapter/AddAdapter;",
        "addAdapter",
        "Lteam/opay/business/picture/adapter/ImageAdapter;",
        "getImageAdapter",
        "()Lteam/opay/business/picture/adapter/ImageAdapter;",
        "imageAdapter",
        "Landroidx/recyclerview/widget/ConcatAdapter;",
        "E",
        "getMAdapter",
        "()Landroidx/recyclerview/widget/ConcatAdapter;",
        "mAdapter",
        "Lteam/opay/business/picture/helper/CameraHelper;",
        "F",
        "getCameraHelper",
        "()Lteam/opay/business/picture/helper/CameraHelper;",
        "cameraHelper",
        "Lteam/opay/business/picture/helper/SelectFileHelper;",
        "G",
        "getSelectFileHelper",
        "()Lteam/opay/business/picture/helper/SelectFileHelper;",
        "selectFileHelper",
        "SizeObserver",
        "business-picture_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public A:Lteam/opay/core/common/android/event/CallbackWrapper2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/common/android/event/CallbackWrapper2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public B:Lteam/opay/core/common/android/event/CallbackWrapper2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/common/android/event/CallbackWrapper2<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final C:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final D:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final E:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final F:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final G:Lid8;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:I

.field public q:I

.field public r:I

.field public final s:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:Lteam/opay/core/common/android/event/CallbackWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/common/android/event/CallbackWrapper<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public y:Lteam/opay/core/common/android/event/CallbackWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/common/android/event/CallbackWrapper<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public z:Lteam/opay/core/common/android/event/CallbackWrapper2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lteam/opay/core/common/android/event/CallbackWrapper2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lteam/opay/business/picture/widget/PickImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lteam/opay/business/picture/widget/PickImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct/range {p0 .. p3}, Lteam/opay/business/widget/LifecycleFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v2, 0x64

    .line 5
    iput v2, v0, Lteam/opay/business/picture/widget/PickImageView;->d:I

    const/16 v3, 0x8

    .line 6
    iput v3, v0, Lteam/opay/business/picture/widget/PickImageView;->e:I

    const/16 v4, 0xd2

    .line 7
    iput v4, v0, Lteam/opay/business/picture/widget/PickImageView;->f:I

    .line 8
    iput v4, v0, Lteam/opay/business/picture/widget/PickImageView;->g:I

    .line 9
    sget v5, Lteam/opay/business/picture/R$layout;->picture_item_image_add:I

    iput v5, v0, Lteam/opay/business/picture/widget/PickImageView;->h:I

    .line 10
    sget v5, Lteam/opay/business/picture/R$layout;->picture_item_image:I

    iput v5, v0, Lteam/opay/business/picture/widget/PickImageView;->i:I

    const/4 v5, 0x1

    .line 11
    iput-boolean v5, v0, Lteam/opay/business/picture/widget/PickImageView;->j:Z

    .line 12
    iput-boolean v5, v0, Lteam/opay/business/picture/widget/PickImageView;->k:Z

    .line 13
    iput-boolean v5, v0, Lteam/opay/business/picture/widget/PickImageView;->l:Z

    .line 14
    iput-boolean v5, v0, Lteam/opay/business/picture/widget/PickImageView;->m:Z

    .line 15
    iput v5, v0, Lteam/opay/business/picture/widget/PickImageView;->q:I

    .line 16
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/4 v7, 0x4

    int-to-float v8, v7

    mul-float v6, v6, v8

    .line 17
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 18
    const-class v9, Ljava/lang/Integer;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v10

    .line 19
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "return number type not support"

    if-eqz v12, :cond_0

    check-cast v6, Ljava/lang/Integer;

    goto :goto_0

    .line 20
    :cond_0
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 21
    :cond_1
    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    goto :goto_0

    .line 22
    :cond_2
    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 23
    :goto_0
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 24
    iput v6, v0, Lteam/opay/business/picture/widget/PickImageView;->r:I

    .line 25
    new-instance v6, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v6, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lteam/opay/business/picture/widget/PickImageView;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    iput v5, v0, Lteam/opay/business/picture/widget/PickImageView;->t:I

    .line 27
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    mul-float v10, v10, v8

    .line 28
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 29
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v10

    .line 30
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    check-cast v8, Ljava/lang/Integer;

    goto :goto_1

    .line 31
    :cond_3
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_1

    .line 32
    :cond_4
    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    goto :goto_1

    .line 33
    :cond_5
    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v12

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 34
    :goto_1
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 35
    iput v8, v0, Lteam/opay/business/picture/widget/PickImageView;->u:I

    .line 36
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    int-to-float v10, v3

    mul-float v8, v8, v10

    .line 37
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 38
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v10

    .line 39
    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    check-cast v8, Ljava/lang/Integer;

    goto :goto_2

    .line 40
    :cond_6
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_2

    .line 41
    :cond_7
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    goto :goto_2

    .line 42
    :cond_8
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 43
    :goto_2
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 44
    iput v8, v0, Lteam/opay/business/picture/widget/PickImageView;->v:I

    .line 45
    iput v7, v0, Lteam/opay/business/picture/widget/PickImageView;->w:I

    .line 46
    new-instance v8, Lteam/opay/core/common/android/event/CallbackWrapper2;

    invoke-virtual/range {p0 .. p0}, Lteam/opay/business/widget/LifecycleFrameLayout;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v10

    new-instance v11, Lwpb;

    invoke-direct {v11, v0}, Lwpb;-><init>(Lteam/opay/business/picture/widget/PickImageView;)V

    invoke-direct {v8, v10, v11}, Lteam/opay/core/common/android/event/CallbackWrapper2;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function2;)V

    iput-object v8, v0, Lteam/opay/business/picture/widget/PickImageView;->A:Lteam/opay/core/common/android/event/CallbackWrapper2;

    .line 47
    new-instance v8, Lteam/opay/core/common/android/event/CallbackWrapper2;

    invoke-virtual/range {p0 .. p0}, Lteam/opay/business/widget/LifecycleFrameLayout;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v10

    new-instance v11, Lcqb;

    invoke-direct {v11, v0}, Lcqb;-><init>(Lteam/opay/business/picture/widget/PickImageView;)V

    invoke-direct {v8, v10, v11}, Lteam/opay/core/common/android/event/CallbackWrapper2;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function2;)V

    iput-object v8, v0, Lteam/opay/business/picture/widget/PickImageView;->B:Lteam/opay/core/common/android/event/CallbackWrapper2;

    .line 48
    new-instance v8, Ldqb;

    invoke-direct {v8, v0}, Ldqb;-><init>(Lteam/opay/business/picture/widget/PickImageView;)V

    invoke-static {v8}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v8

    iput-object v8, v0, Lteam/opay/business/picture/widget/PickImageView;->C:Lid8;

    .line 49
    new-instance v8, Leqb;

    invoke-direct {v8, v0}, Leqb;-><init>(Lteam/opay/business/picture/widget/PickImageView;)V

    invoke-static {v8}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v8

    iput-object v8, v0, Lteam/opay/business/picture/widget/PickImageView;->D:Lid8;

    .line 50
    new-instance v8, Lfqb;

    invoke-direct {v8, v0}, Lfqb;-><init>(Lteam/opay/business/picture/widget/PickImageView;)V

    invoke-static {v8}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v8

    iput-object v8, v0, Lteam/opay/business/picture/widget/PickImageView;->E:Lid8;

    .line 51
    new-instance v8, Lgqb;

    invoke-direct {v8, v1, v0}, Lgqb;-><init>(Landroid/content/Context;Lteam/opay/business/picture/widget/PickImageView;)V

    invoke-static {v8}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v8

    iput-object v8, v0, Lteam/opay/business/picture/widget/PickImageView;->F:Lid8;

    .line 52
    new-instance v8, Lhqb;

    invoke-direct {v8, v1, v0}, Lhqb;-><init>(Landroid/content/Context;Lteam/opay/business/picture/widget/PickImageView;)V

    invoke-static {v8}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    move-result-object v8

    iput-object v8, v0, Lteam/opay/business/picture/widget/PickImageView;->G:Lid8;

    const/4 v8, -0x1

    .line 53
    invoke-virtual {v0, v6, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 54
    sget-object v6, Lteam/opay/business/picture/R$styleable;->PickImageView:[I

    move-object/from16 v8, p2

    invoke-virtual {v1, v8, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const-string v6, "obtainStyledAttributes(...)"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v6, :cond_20

    .line 56
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v11

    .line 57
    sget v12, Lteam/opay/business/picture/R$styleable;->PickImageView_piv_maxNum:I

    if-ne v11, v12, :cond_9

    .line 58
    invoke-virtual {v1, v11, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    iput v11, v0, Lteam/opay/business/picture/widget/PickImageView;->e:I

    goto/16 :goto_5

    .line 59
    :cond_9
    sget v12, Lteam/opay/business/picture/R$styleable;->PickImageView_piv_itemHeight:I

    if-ne v11, v12, :cond_a

    .line 60
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v11

    iput v11, v0, Lteam/opay/business/picture/widget/PickImageView;->f:I

    goto/16 :goto_5

    .line 61
    :cond_a
    sget v12, Lteam/opay/business/picture/R$styleable;->PickImageView_piv_itemWith:I

    if-ne v11, v12, :cond_b

    .line 62
    invoke-virtual {v1, v11, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v11

    iput v11, v0, Lteam/opay/business/picture/widget/PickImageView;->g:I

    goto/16 :goto_5

    .line 63
    :cond_b
    sget v12, Lteam/opay/business/picture/R$styleable;->PickImageView_piv_canPick:I

    if-ne v11, v12, :cond_c

    .line 64
    invoke-virtual {v1, v11, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v0, Lteam/opay/business/picture/widget/PickImageView;->k:Z

    goto/16 :goto_5

    .line 65
    :cond_c
    sget v12, Lteam/opay/business/picture/R$styleable;->PickImageView_piv_canCamera:I

    if-ne v11, v12, :cond_d

    .line 66
    invoke-virtual {v1, v11, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v0, Lteam/opay/business/picture/widget/PickImageView;->l:Z

    goto/16 :goto_5

    .line 67
    :cond_d
    sget v12, Lteam/opay/business/picture/R$styleable;->PickImageView_piv_canDelete:I

    if-ne v11, v12, :cond_e

    .line 68
    invoke-virtual {v1, v11, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v0, Lteam/opay/business/picture/widget/PickImageView;->m:Z

    goto/16 :goto_5

    .line 69
    :cond_e
    sget v12, Lteam/opay/business/picture/R$styleable;->PickImageView_piv_itemLayoutRes:I

    if-ne v11, v12, :cond_f

    .line 70
    sget v12, Lteam/opay/business/picture/R$layout;->picture_item_image:I

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v0, Lteam/opay/business/picture/widget/PickImageView;->i:I

    goto/16 :goto_5

    .line 71
    :cond_f
    sget v12, Lteam/opay/business/picture/R$styleable;->PickImageView_piv_addLayoutRes:I

    if-ne v11, v12, :cond_10

    .line 72
    sget v12, Lteam/opay/business/picture/R$layout;->picture_item_image_add:I

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v0, Lteam/opay/business/picture/widget/PickImageView;->h:I

    goto/16 :goto_5

    .line 73
    :cond_10
    sget v12, Lteam/opay/business/picture/R$styleable;->PickImageView_piv_showAdd:I

    if-ne v11, v12, :cond_11

    .line 74
    invoke-virtual {v1, v11, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v0, Lteam/opay/business/picture/widget/PickImageView;->j:Z

    goto/16 :goto_5

    .line 75
    :cond_11
    sget v12, Lteam/opay/business/picture/R$styleable;->PickImageView_piv_canLocation:I

    if-ne v11, v12, :cond_12

    .line 76
    invoke-virtual {v1, v11, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v0, Lteam/opay/business/picture/widget/PickImageView;->n:Z

    goto/16 :goto_5

    .line 77
    :cond_12
    sget v12, Lteam/opay/business/picture/R$styleable;->PickImageView_piv_fileType:I

    if-ne v11, v12, :cond_13

    .line 78
    invoke-virtual {v1, v11, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v0, Lteam/opay/business/picture/widget/PickImageView;->q:I

    goto/16 :goto_5

    .line 79
    :cond_13
    sget v12, Lteam/opay/business/picture/R$styleable;->PickImageView_piv_cameraType:I

    if-ne v11, v12, :cond_14

    .line 80
    invoke-virtual {v1, v11, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v0, Lteam/opay/business/picture/widget/PickImageView;->p:I

    goto/16 :goto_5

    .line 81
    :cond_14
    sget v12, Lteam/opay/business/picture/R$styleable;->PickImageView_piv_radiusImage:I

    if-ne v11, v12, :cond_19

    .line 82
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 83
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    .line 84
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    mul-float v14, v14, v12

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 85
    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v14

    .line 86
    sget-object v15, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    check-cast v12, Ljava/lang/Integer;

    goto :goto_4

    .line 87
    :cond_15
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_4

    .line 88
    :cond_16
    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    goto :goto_4

    .line 89
    :cond_17
    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lho7;

    move-result-object v15

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 90
    :goto_4
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 91
    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v0, Lteam/opay/business/picture/widget/PickImageView;->r:I

    goto :goto_5

    .line 92
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_19
    sget v12, Lteam/opay/business/picture/R$styleable;->PickImageView_piv_sizeKb:I

    if-ne v11, v12, :cond_1a

    .line 94
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v0, Lteam/opay/business/picture/widget/PickImageView;->d:I

    goto :goto_5

    .line 95
    :cond_1a
    sget v12, Lteam/opay/business/picture/R$styleable;->PickImageView_piv_layoutManager:I

    if-ne v11, v12, :cond_1b

    .line 96
    invoke-virtual {v1, v11, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v0, Lteam/opay/business/picture/widget/PickImageView;->t:I

    goto :goto_5

    .line 97
    :cond_1b
    sget v12, Lteam/opay/business/picture/R$styleable;->PickImageView_piv_spanCount:I

    if-ne v11, v12, :cond_1c

    .line 98
    iget v12, v0, Lteam/opay/business/picture/widget/PickImageView;->w:I

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v0, Lteam/opay/business/picture/widget/PickImageView;->w:I

    goto :goto_5

    .line 99
    :cond_1c
    sget v12, Lteam/opay/business/picture/R$styleable;->PickImageView_piv_horizontalSpace:I

    if-ne v11, v12, :cond_1d

    .line 100
    iget v12, v0, Lteam/opay/business/picture/widget/PickImageView;->u:I

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v0, Lteam/opay/business/picture/widget/PickImageView;->u:I

    goto :goto_5

    .line 101
    :cond_1d
    sget v12, Lteam/opay/business/picture/R$styleable;->PickImageView_piv_verticalSpace:I

    if-ne v11, v12, :cond_1e

    .line 102
    iget v12, v0, Lteam/opay/business/picture/widget/PickImageView;->v:I

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, v0, Lteam/opay/business/picture/widget/PickImageView;->v:I

    goto :goto_5

    .line 103
    :cond_1e
    sget v12, Lteam/opay/business/picture/R$styleable;->PickImageView_piv_drawWaterTime:I

    if-ne v11, v12, :cond_1f

    .line 104
    invoke-virtual {v1, v11, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v0, Lteam/opay/business/picture/widget/PickImageView;->o:Z

    :cond_1f
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 105
    :cond_20
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lteam/opay/business/picture/widget/PickImageView;->T()V

    return-void

    .line 107
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_23
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lteam/opay/business/picture/widget/PickImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final A(Landroid/content/Context;Lteam/opay/business/picture/widget/PickImageView;)Lteam/opay/business/picture/helper/CameraHelper;
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/business/picture/helper/CameraHelper;

    .line 2
    .line 3
    iget v1, p1, Lteam/opay/business/picture/widget/PickImageView;->d:I

    .line 4
    .line 5
    iget-boolean v2, p1, Lteam/opay/business/picture/widget/PickImageView;->o:Z

    .line 6
    .line 7
    invoke-direct {v0, p0, v1, v2}, Lteam/opay/business/picture/helper/CameraHelper;-><init>(Landroid/content/Context;IZ)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Lteam/opay/business/picture/helper/PickViewWrapper;

    .line 11
    .line 12
    invoke-virtual {p1}, Lteam/opay/business/widget/LifecycleFrameLayout;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Liqb;

    .line 17
    .line 18
    invoke-direct {v2, p1}, Liqb;-><init>(Lteam/opay/business/picture/widget/PickImageView;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v1, v2}, Lteam/opay/business/picture/helper/PickViewWrapper;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function2;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lteam/opay/business/picture/helper/CameraHelper;->w(Lteam/opay/business/picture/helper/PickViewWrapper;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public static final B(Lteam/opay/business/picture/widget/PickImageView;Landroid/net/Uri;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "uri"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lteam/opay/business/picture/widget/PickImageView;->B:Lteam/opay/core/common/android/event/CallbackWrapper2;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/common/android/event/CallbackWrapper2;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method public static final E(Lteam/opay/business/picture/widget/PickImageView;)Lteam/opay/business/picture/adapter/ImageAdapter;
    .locals 8

    .line 1
    new-instance v7, Lteam/opay/business/picture/adapter/ImageAdapter;

    .line 2
    .line 3
    iget v1, p0, Lteam/opay/business/picture/widget/PickImageView;->f:I

    .line 4
    .line 5
    iget v2, p0, Lteam/opay/business/picture/widget/PickImageView;->g:I

    .line 6
    .line 7
    iget v3, p0, Lteam/opay/business/picture/widget/PickImageView;->e:I

    .line 8
    .line 9
    iget v4, p0, Lteam/opay/business/picture/widget/PickImageView;->i:I

    .line 10
    .line 11
    iget-boolean v5, p0, Lteam/opay/business/picture/widget/PickImageView;->m:Z

    .line 12
    .line 13
    iget v6, p0, Lteam/opay/business/picture/widget/PickImageView;->r:I

    .line 14
    .line 15
    move-object v0, v7

    .line 16
    invoke-direct/range {v0 .. v6}, Lteam/opay/business/picture/adapter/ImageAdapter;-><init>(IIIIZI)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lkqb;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lkqb;-><init>(Lteam/opay/business/picture/widget/PickImageView;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v7, v0}, Lteam/opay/business/picture/adapter/ImageAdapter;->s(Lkotlin/jvm/functions/Function2;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lxpb;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lxpb;-><init>(Lteam/opay/business/picture/widget/PickImageView;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v7, v0}, Lteam/opay/business/picture/adapter/ImageAdapter;->t(Lkotlin/jvm/functions/Function2;)V

    .line 33
    .line 34
    .line 35
    return-object v7
.end method

.method public static final F(Lteam/opay/business/picture/widget/PickImageView;Ljava/lang/Object;I)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "model"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lteam/opay/business/picture/widget/PickImageView;->z:Lteam/opay/core/common/android/event/CallbackWrapper2;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/common/android/event/CallbackWrapper2;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method public static final G(Lteam/opay/business/picture/widget/PickImageView;Ljava/lang/Object;I)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "model"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lteam/opay/business/picture/widget/PickImageView;->A:Lteam/opay/core/common/android/event/CallbackWrapper2;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/common/android/event/CallbackWrapper2;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method public static final I(Lteam/opay/business/picture/widget/PickImageView;)Landroidx/recyclerview/widget/ConcatAdapter;
    .locals 4

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Lteam/opay/business/picture/widget/PickImageView;->getImageAdapter()Lteam/opay/business/picture/adapter/ImageAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {p0}, Lteam/opay/business/picture/widget/PickImageView;->getAddAdapter()Lteam/opay/business/picture/adapter/AddAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v2, 0x2

    .line 12
    new-array v2, v2, [Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v1, v2, v3

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    aput-object p0, v2, v1

    .line 19
    .line 20
    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/ConcatAdapter;-><init>([Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public static final J(Lteam/opay/business/picture/widget/PickImageView;Ljava/lang/Object;I)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "model"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/business/picture/widget/PickImageView;->getImageAdapter()Lteam/opay/business/picture/adapter/ImageAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lteam/opay/business/picture/adapter/ImageAdapter;->o()Lteam/opay/business/picture/adapter/SourceData;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lteam/opay/business/picture/adapter/SourceData;->d(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method public static final K(Lteam/opay/business/picture/widget/PickImageView;Landroid/net/Uri;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "uri"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/business/picture/widget/PickImageView;->getImageAdapter()Lteam/opay/business/picture/adapter/ImageAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Lteam/opay/business/picture/adapter/ImageAdapter;->o()Lteam/opay/business/picture/adapter/SourceData;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "toString(...)"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/picture/adapter/SourceData;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method public static final M(Landroidx/fragment/app/FragmentActivity;Lteam/opay/business/picture/widget/PickImageView;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    invoke-virtual {p1}, Lteam/opay/business/picture/widget/PickImageView;->C()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lteam/opay/business/picture/widget/PickImageView;->C()V

    .line 22
    .line 23
    .line 24
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method public static final N(Landroid/content/Context;Lteam/opay/business/picture/widget/PickImageView;)Lteam/opay/business/picture/helper/SelectFileHelper;
    .locals 3

    .line 1
    new-instance v0, Lteam/opay/business/picture/helper/SelectFileHelper;

    .line 2
    .line 3
    iget v1, p1, Lteam/opay/business/picture/widget/PickImageView;->q:I

    .line 4
    .line 5
    iget v2, p1, Lteam/opay/business/picture/widget/PickImageView;->d:I

    .line 6
    .line 7
    invoke-direct {v0, p0, v1, v2}, Lteam/opay/business/picture/helper/SelectFileHelper;-><init>(Landroid/content/Context;II)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Lteam/opay/business/picture/helper/PickViewWrapper;

    .line 11
    .line 12
    invoke-virtual {p1}, Lteam/opay/business/widget/LifecycleFrameLayout;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Lypb;

    .line 17
    .line 18
    invoke-direct {v2, p1}, Lypb;-><init>(Lteam/opay/business/picture/widget/PickImageView;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v1, v2}, Lteam/opay/business/picture/helper/PickViewWrapper;-><init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function2;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lteam/opay/business/picture/helper/SelectFileHelper;->n(Lteam/opay/business/picture/helper/PickViewWrapper;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public static final O(Lteam/opay/business/picture/widget/PickImageView;Landroid/net/Uri;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "uri"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lteam/opay/business/picture/widget/PickImageView;->B:Lteam/opay/core/common/android/event/CallbackWrapper2;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lteam/opay/core/common/android/event/CallbackWrapper2;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method public static final Q(Lteam/opay/business/picture/widget/PickImageView;Lteam/opay/core/common/android/event/CallbackWrapper;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/picture/widget/PickImageView;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lteam/opay/business/picture/widget/PickImageView;->L()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lteam/opay/business/picture/widget/PickImageView;->C()V

    .line 10
    .line 11
    .line 12
    :goto_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Lteam/opay/core/common/android/event/CallbackWrapper;->a(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method public static final R(Lteam/opay/business/picture/widget/PickImageView;Lteam/opay/core/common/android/event/CallbackWrapper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/picture/widget/PickImageView;->getSelectFileHelper()Lteam/opay/business/picture/helper/SelectFileHelper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lteam/opay/business/picture/helper/SelectFileHelper;->l()V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lteam/opay/core/common/android/event/CallbackWrapper;->a(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;Lteam/opay/business/picture/widget/PickImageView;)Lteam/opay/business/picture/helper/CameraHelper;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/picture/widget/PickImageView;->A(Landroid/content/Context;Lteam/opay/business/picture/widget/PickImageView;)Lteam/opay/business/picture/helper/CameraHelper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lteam/opay/business/picture/widget/PickImageView;Lteam/opay/core/common/android/event/CallbackWrapper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/picture/widget/PickImageView;->Q(Lteam/opay/business/picture/widget/PickImageView;Lteam/opay/core/common/android/event/CallbackWrapper;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lteam/opay/business/picture/widget/PickImageView;)Lteam/opay/business/picture/adapter/AddAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/picture/widget/PickImageView;->x(Lteam/opay/business/picture/widget/PickImageView;)Lteam/opay/business/picture/adapter/AddAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lteam/opay/business/picture/widget/PickImageView;)Landroidx/recyclerview/widget/ConcatAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/picture/widget/PickImageView;->I(Lteam/opay/business/picture/widget/PickImageView;)Landroidx/recyclerview/widget/ConcatAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getAddAdapter()Lteam/opay/business/picture/adapter/AddAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/widget/PickImageView;->C:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/picture/adapter/AddAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getCameraHelper()Lteam/opay/business/picture/helper/CameraHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/widget/PickImageView;->F:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/picture/helper/CameraHelper;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic getCameraType$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private static synthetic getFileType$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final getImageAdapter()Lteam/opay/business/picture/adapter/ImageAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/widget/PickImageView;->D:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/picture/adapter/ImageAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getMAdapter()Landroidx/recyclerview/widget/ConcatAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/widget/PickImageView;->E:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/ConcatAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getSelectFileHelper()Lteam/opay/business/picture/helper/SelectFileHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/widget/PickImageView;->G:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/business/picture/helper/SelectFileHelper;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic h(Lteam/opay/business/picture/widget/PickImageView;Lteam/opay/core/common/android/event/CallbackWrapper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/picture/widget/PickImageView;->R(Lteam/opay/business/picture/widget/PickImageView;Lteam/opay/core/common/android/event/CallbackWrapper;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lteam/opay/business/picture/widget/PickImageView;)Lteam/opay/business/picture/adapter/ImageAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/picture/widget/PickImageView;->E(Lteam/opay/business/picture/widget/PickImageView;)Lteam/opay/business/picture/adapter/ImageAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Landroidx/fragment/app/FragmentActivity;Lteam/opay/business/picture/widget/PickImageView;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/picture/widget/PickImageView;->M(Landroidx/fragment/app/FragmentActivity;Lteam/opay/business/picture/widget/PickImageView;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lteam/opay/business/picture/widget/PickImageView;Landroid/net/Uri;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/picture/widget/PickImageView;->K(Lteam/opay/business/picture/widget/PickImageView;Landroid/net/Uri;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lteam/opay/business/picture/widget/PickImageView;Landroid/net/Uri;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/picture/widget/PickImageView;->O(Lteam/opay/business/picture/widget/PickImageView;Landroid/net/Uri;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic n(Lteam/opay/business/picture/widget/PickImageView;Ljava/lang/Object;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/picture/widget/PickImageView;->J(Lteam/opay/business/picture/widget/PickImageView;Ljava/lang/Object;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o(Lteam/opay/business/picture/widget/PickImageView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/business/picture/widget/PickImageView;->y(Lteam/opay/business/picture/widget/PickImageView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p(Lteam/opay/business/picture/widget/PickImageView;Ljava/lang/Object;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/picture/widget/PickImageView;->F(Lteam/opay/business/picture/widget/PickImageView;Ljava/lang/Object;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q(Lteam/opay/business/picture/widget/PickImageView;Landroid/net/Uri;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/picture/widget/PickImageView;->B(Lteam/opay/business/picture/widget/PickImageView;Landroid/net/Uri;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r(Landroid/content/Context;Lteam/opay/business/picture/widget/PickImageView;)Lteam/opay/business/picture/helper/SelectFileHelper;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/business/picture/widget/PickImageView;->N(Landroid/content/Context;Lteam/opay/business/picture/widget/PickImageView;)Lteam/opay/business/picture/helper/SelectFileHelper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Lteam/opay/business/picture/widget/PickImageView;Ljava/lang/Object;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/business/picture/widget/PickImageView;->G(Lteam/opay/business/picture/widget/PickImageView;Ljava/lang/Object;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic t(Lteam/opay/business/picture/widget/PickImageView;)Lteam/opay/business/picture/adapter/AddAdapter;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/picture/widget/PickImageView;->getAddAdapter()Lteam/opay/business/picture/adapter/AddAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic u(Lteam/opay/business/picture/widget/PickImageView;)Lteam/opay/business/picture/adapter/ImageAdapter;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/picture/widget/PickImageView;->getImageAdapter()Lteam/opay/business/picture/adapter/ImageAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic v(Lteam/opay/business/picture/widget/PickImageView;)Landroidx/recyclerview/widget/ConcatAdapter;
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/picture/widget/PickImageView;->getMAdapter()Landroidx/recyclerview/widget/ConcatAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic w(Lteam/opay/business/picture/widget/PickImageView;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/picture/widget/PickImageView;->H()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final x(Lteam/opay/business/picture/widget/PickImageView;)Lteam/opay/business/picture/adapter/AddAdapter;
    .locals 4

    .line 1
    new-instance v0, Lteam/opay/business/picture/adapter/AddAdapter;

    .line 2
    .line 3
    iget v1, p0, Lteam/opay/business/picture/widget/PickImageView;->f:I

    .line 4
    .line 5
    iget v2, p0, Lteam/opay/business/picture/widget/PickImageView;->g:I

    .line 6
    .line 7
    iget v3, p0, Lteam/opay/business/picture/widget/PickImageView;->h:I

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lteam/opay/business/picture/adapter/AddAdapter;-><init>(III)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljqb;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Ljqb;-><init>(Lteam/opay/business/picture/widget/PickImageView;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lteam/opay/business/picture/adapter/AddAdapter;->p(Lkotlin/jvm/functions/Function0;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static final y(Lteam/opay/business/picture/widget/PickImageView;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/widget/PickImageView;->x:Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lteam/opay/core/common/android/event/CallbackWrapper;->a(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lteam/opay/business/picture/widget/PickImageView;->S()V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method


# virtual methods
.method public final C()V
    .locals 2

    .line 1
    iget v0, p0, Lteam/opay/business/picture/widget/PickImageView;->p:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lteam/opay/business/picture/widget/PickImageView;->getCameraHelper()Lteam/opay/business/picture/helper/CameraHelper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lteam/opay/business/picture/helper/CameraHelper;->u()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0}, Lteam/opay/business/picture/widget/PickImageView;->getCameraHelper()Lteam/opay/business/picture/helper/CameraHelper;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lteam/opay/business/picture/widget/PickImageView;->p:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lteam/opay/business/picture/helper/CameraHelper;->s(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public final D(Landroid/content/Context;)Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    check-cast p1, Landroid/content/ContextWrapper;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "getBaseContext(...)"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lteam/opay/business/picture/widget/PickImageView;->D(Landroid/content/Context;)Landroidx/fragment/app/FragmentActivity;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p1, 0x0

    .line 29
    :goto_0
    return-object p1
.end method

.method public final H()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/picture/widget/PickImageView;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lteam/opay/business/picture/widget/PickImageView;->k:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lteam/opay/business/picture/widget/PickImageView;->l:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public final L()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getContext(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Loj8;->b(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lteam/opay/business/picture/widget/PickImageView;->C()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lteam/opay/business/picture/widget/PickImageView;->D(Landroid/content/Context;)Landroidx/fragment/app/FragmentActivity;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    new-instance v12, Lteam/opay/core/common/base/DialogInfo;

    .line 35
    .line 36
    sget v1, Lteam/opay/business/picture/R$string;->picture_check_system_gps:I

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const-string v1, "getString(...)"

    .line 43
    .line 44
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget v2, Lteam/opay/core/common/R$string;->common_confirm:I

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sget v2, Lteam/opay/core/common/R$string;->common_cancel:I

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/16 v10, 0xe1

    .line 66
    .line 67
    const/4 v11, 0x0

    .line 68
    const/4 v2, 0x0

    .line 69
    const-string v3, ""

    .line 70
    .line 71
    const/4 v7, 0x0

    .line 72
    const/4 v8, 0x0

    .line 73
    const/4 v9, 0x0

    .line 74
    move-object v1, v12

    .line 75
    invoke-direct/range {v1 .. v11}, Lteam/opay/core/common/base/DialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 76
    .line 77
    .line 78
    sget-object v1, Lteam/opay/core/common/base/AlertDialogFragment;->e:Lteam/opay/core/common/base/AlertDialogFragment$Companion;

    .line 79
    .line 80
    invoke-virtual {v1, v12}, Lteam/opay/core/common/base/AlertDialogFragment$Companion;->a(Lteam/opay/core/common/base/DialogInfo;)Lteam/opay/core/common/base/AlertDialogFragment;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    new-instance v2, Lzpb;

    .line 85
    .line 86
    invoke-direct {v2, v0, p0}, Lzpb;-><init>(Landroidx/fragment/app/FragmentActivity;Lteam/opay/business/picture/widget/PickImageView;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Lteam/opay/core/common/base/AlertDialogFragment;->H(Lkotlin/jvm/functions/Function1;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v0, v1}, Lre6;->m(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/DialogFragment;)V

    .line 93
    .line 94
    .line 95
    :goto_0
    return-void
.end method

.method public final P(Lteam/opay/core/common/android/event/CallbackWrapper;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/android/event/CallbackWrapper<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getContext(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lteam/opay/business/picture/widget/PickImageView;->D(Landroid/content/Context;)Landroidx/fragment/app/FragmentActivity;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object v1, Lteam/opay/business/picture/PickImageSheetFragment;->s:Lteam/opay/business/picture/PickImageSheetFragment$Companion;

    .line 18
    .line 19
    invoke-virtual {v1}, Lteam/opay/business/picture/PickImageSheetFragment$Companion;->a()Lteam/opay/business/picture/PickImageSheetFragment;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Laqb;

    .line 24
    .line 25
    invoke-direct {v2, p0, p1}, Laqb;-><init>(Lteam/opay/business/picture/widget/PickImageView;Lteam/opay/core/common/android/event/CallbackWrapper;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lteam/opay/business/picture/PickImageSheetFragment;->b0(Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lbqb;

    .line 32
    .line 33
    invoke-direct {v2, p0, p1}, Lbqb;-><init>(Lteam/opay/business/picture/widget/PickImageView;Lteam/opay/core/common/android/event/CallbackWrapper;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lteam/opay/business/picture/PickImageSheetFragment;->a0(Lkotlin/jvm/functions/Function0;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0, v1}, Lre6;->q(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/common/base/BaseSheetFragment;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final S()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/widget/PickImageView;->y:Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lteam/opay/business/picture/widget/PickImageView;->z(Lteam/opay/core/common/android/event/CallbackWrapper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final T()V
    .locals 12

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/widget/PickImageView;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    iget v1, p0, Lteam/opay/business/picture/widget/PickImageView;->t:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    iget v4, p0, Lteam/opay/business/picture/widget/PickImageView;->w:I

    .line 15
    .line 16
    invoke-direct {v1, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lteam/opay/business/picture/helper/SpaceItemDecoration;

    .line 23
    .line 24
    iget v6, p0, Lteam/opay/business/picture/widget/PickImageView;->u:I

    .line 25
    .line 26
    iget v7, p0, Lteam/opay/business/picture/widget/PickImageView;->v:I

    .line 27
    .line 28
    iget v8, p0, Lteam/opay/business/picture/widget/PickImageView;->w:I

    .line 29
    .line 30
    const/16 v10, 0x8

    .line 31
    .line 32
    const/4 v11, 0x0

    .line 33
    const/4 v9, 0x0

    .line 34
    move-object v5, v1

    .line 35
    invoke-direct/range {v5 .. v11}, Lteam/opay/business/picture/helper/SpaceItemDecoration;-><init>(IIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-direct {v1, v3, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-direct {p0}, Lteam/opay/business/picture/widget/PickImageView;->getMAdapter()Landroidx/recyclerview/widget/ConcatAdapter;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lteam/opay/business/picture/widget/PickImageView;->getImageAdapter()Lteam/opay/business/picture/adapter/ImageAdapter;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v1, Lteam/opay/business/picture/widget/PickImageView$SizeObserver;

    .line 74
    .line 75
    invoke-direct {v1, p0}, Lteam/opay/business/picture/widget/PickImageView$SizeObserver;-><init>(Lteam/opay/business/picture/widget/PickImageView;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lteam/opay/business/picture/widget/PickImageView;->H()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_1

    .line 86
    .line 87
    invoke-direct {p0}, Lteam/opay/business/picture/widget/PickImageView;->getMAdapter()Landroidx/recyclerview/widget/ConcatAdapter;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-direct {p0}, Lteam/opay/business/picture/widget/PickImageView;->getAddAdapter()Lteam/opay/business/picture/adapter/AddAdapter;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ConcatAdapter;->n(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    .line 96
    .line 97
    .line 98
    :cond_1
    return-void
.end method

.method public final getAddLayoutRes()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/business/picture/widget/PickImageView;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCameraType()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/business/picture/widget/PickImageView;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCanCamera()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/picture/widget/PickImageView;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getCanDelete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/picture/widget/PickImageView;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getCanLocation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/picture/widget/PickImageView;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getCanPick()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/picture/widget/PickImageView;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getDrawWaterTime()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/picture/widget/PickImageView;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getImageLayoutRes()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/business/picture/widget/PickImageView;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public final getItemHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/business/picture/widget/PickImageView;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final getItemWith()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/business/picture/widget/PickImageView;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMAddClickWithoutTake()Lteam/opay/core/common/android/event/CallbackWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/common/android/event/CallbackWrapper<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/widget/PickImageView;->x:Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMDeleteClick()Lteam/opay/core/common/android/event/CallbackWrapper2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/common/android/event/CallbackWrapper2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/widget/PickImageView;->A:Lteam/opay/core/common/android/event/CallbackWrapper2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMImageClick()Lteam/opay/core/common/android/event/CallbackWrapper2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/common/android/event/CallbackWrapper2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/widget/PickImageView;->z:Lteam/opay/core/common/android/event/CallbackWrapper2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMSelectFileCallBack()Lteam/opay/core/common/android/event/CallbackWrapper2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/common/android/event/CallbackWrapper2<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/widget/PickImageView;->B:Lteam/opay/core/common/android/event/CallbackWrapper2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMSelectWayCallback()Lteam/opay/core/common/android/event/CallbackWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/core/common/android/event/CallbackWrapper<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/business/picture/widget/PickImageView;->y:Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMaxnum()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/business/picture/widget/PickImageView;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSizekb()I
    .locals 1

    .line 1
    iget v0, p0, Lteam/opay/business/picture/widget/PickImageView;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSourceData()Lteam/opay/business/picture/adapter/SourceData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lteam/opay/business/picture/widget/PickImageView;->getImageAdapter()Lteam/opay/business/picture/adapter/ImageAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lteam/opay/business/picture/adapter/ImageAdapter;->o()Lteam/opay/business/picture/adapter/SourceData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final setAddLayoutRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/business/picture/widget/PickImageView;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCameraType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/business/picture/widget/PickImageView;->p:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCanCamera(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/business/picture/widget/PickImageView;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setCanDelete(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/business/picture/widget/PickImageView;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setCanLocation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/business/picture/widget/PickImageView;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setCanPick(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/business/picture/widget/PickImageView;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setDefaultSample(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/business/picture/widget/PickImageView;->getAddAdapter()Lteam/opay/business/picture/adapter/AddAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lteam/opay/business/picture/adapter/AddAdapter;->q(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setDrawWaterTime(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/business/picture/widget/PickImageView;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setImageLayoutRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/business/picture/widget/PickImageView;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public final setItemHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/business/picture/widget/PickImageView;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public final setItemWith(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/business/picture/widget/PickImageView;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMAddClickWithoutTake(Lteam/opay/core/common/android/event/CallbackWrapper;)V
    .locals 0
    .param p1    # Lteam/opay/core/common/android/event/CallbackWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/android/event/CallbackWrapper<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/widget/PickImageView;->x:Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 2
    .line 3
    return-void
.end method

.method public final setMDeleteClick(Lteam/opay/core/common/android/event/CallbackWrapper2;)V
    .locals 0
    .param p1    # Lteam/opay/core/common/android/event/CallbackWrapper2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/android/event/CallbackWrapper2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/widget/PickImageView;->A:Lteam/opay/core/common/android/event/CallbackWrapper2;

    .line 2
    .line 3
    return-void
.end method

.method public final setMImageClick(Lteam/opay/core/common/android/event/CallbackWrapper2;)V
    .locals 0
    .param p1    # Lteam/opay/core/common/android/event/CallbackWrapper2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/android/event/CallbackWrapper2<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/widget/PickImageView;->z:Lteam/opay/core/common/android/event/CallbackWrapper2;

    .line 2
    .line 3
    return-void
.end method

.method public final setMSelectFileCallBack(Lteam/opay/core/common/android/event/CallbackWrapper2;)V
    .locals 0
    .param p1    # Lteam/opay/core/common/android/event/CallbackWrapper2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/android/event/CallbackWrapper2<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/widget/PickImageView;->B:Lteam/opay/core/common/android/event/CallbackWrapper2;

    .line 2
    .line 3
    return-void
.end method

.method public final setMSelectWayCallback(Lteam/opay/core/common/android/event/CallbackWrapper;)V
    .locals 0
    .param p1    # Lteam/opay/core/common/android/event/CallbackWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/android/event/CallbackWrapper<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/business/picture/widget/PickImageView;->y:Lteam/opay/core/common/android/event/CallbackWrapper;

    .line 2
    .line 3
    return-void
.end method

.method public final setMaxnum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/business/picture/widget/PickImageView;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public final setShowAdd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lteam/opay/business/picture/widget/PickImageView;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setSizekb(I)V
    .locals 0

    .line 1
    iput p1, p0, Lteam/opay/business/picture/widget/PickImageView;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSourceData(Lteam/opay/business/picture/adapter/SourceData;)V
    .locals 1
    .param p1    # Lteam/opay/business/picture/adapter/SourceData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sourceData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lteam/opay/business/picture/widget/PickImageView;->getImageAdapter()Lteam/opay/business/picture/adapter/ImageAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Lteam/opay/business/picture/adapter/SourceData;->b(Lteam/opay/business/picture/adapter/ImageAdapter;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lteam/opay/business/picture/adapter/ImageAdapter;->u(Lteam/opay/business/picture/adapter/SourceData;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final z(Lteam/opay/core/common/android/event/CallbackWrapper;)V
    .locals 2
    .param p1    # Lteam/opay/core/common/android/event/CallbackWrapper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/core/common/android/event/CallbackWrapper<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lteam/opay/business/picture/widget/PickImageView;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lteam/opay/business/picture/widget/PickImageView;->k:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lteam/opay/business/picture/widget/PickImageView;->P(Lteam/opay/core/common/android/event/CallbackWrapper;)V

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-boolean v0, p0, Lteam/opay/business/picture/widget/PickImageView;->n:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lteam/opay/business/picture/widget/PickImageView;->L()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lteam/opay/business/picture/widget/PickImageView;->C()V

    .line 24
    .line 25
    .line 26
    :goto_0
    if-eqz p1, :cond_3

    .line 27
    .line 28
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lteam/opay/core/common/android/event/CallbackWrapper;->a(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-direct {p0}, Lteam/opay/business/picture/widget/PickImageView;->getSelectFileHelper()Lteam/opay/business/picture/helper/SelectFileHelper;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lteam/opay/business/picture/helper/SelectFileHelper;->l()V

    .line 39
    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lteam/opay/core/common/android/event/CallbackWrapper;->a(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_1
    return-void
.end method
