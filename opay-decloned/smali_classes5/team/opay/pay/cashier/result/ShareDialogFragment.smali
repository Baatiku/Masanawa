.class public final Lteam/opay/pay/cashier/result/ShareDialogFragment;
.super Lteam/opay/core/base/BaseSheetFragmentV2;
.source "ShareDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/pay/cashier/result/ShareDialogFragment$Companion;,
        Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lteam/opay/core/base/BaseSheetFragmentV2<",
        "Lomd;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0018\u0000 \u008b\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u008c\u0001\u008d\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u000f\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ/\u0010\u0010\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0014\u0010\u000f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000c\u0012\u0004\u0012\u00020\u00050\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001b\u0010\u0012\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J#\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0014\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0014\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J!\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001a2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010\"\u001a\u00020\u00052\u0006\u0010!\u001a\u00020 H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J;\u0010*\u001a\u00020\u00052\u0008\u0010%\u001a\u0004\u0018\u00010$2\u0006\u0010&\u001a\u00020\u00152\u0006\u0010\'\u001a\u00020\u000c2\u0008\u0008\u0002\u0010(\u001a\u00020\u000c2\u0008\u0008\u0002\u0010)\u001a\u00020\u000c\u00a2\u0006\u0004\u0008*\u0010+J\u000f\u0010,\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008,\u0010\u0004J\u000f\u0010-\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008-\u0010\u0004R\u0016\u00100\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0016\u00102\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u0010/R\u0016\u00104\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u0010/R\u0016\u0010(\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u0010/R\u0016\u00107\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u0010/R\u0016\u00109\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u0010/R\u0016\u0010;\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010/R\u0018\u0010=\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010/R\u0018\u0010?\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010/R\u0018\u0010A\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010/R\u0018\u0010E\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0018\u0010G\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010DR\u0016\u0010J\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008H\u0010IR\u0016\u0010L\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010IR\u0016\u0010N\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008M\u0010IR\"\u0010)\u001a\u00020\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u0010/\u001a\u0004\u0008P\u0010Q\"\u0004\u0008R\u0010SR*\u0010[\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010T8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008U\u0010V\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010ZR0\u0010b\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\\\u0010]\u001a\u0004\u0008^\u0010_\"\u0004\u0008`\u0010aR*\u0010f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010T8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008c\u0010V\u001a\u0004\u0008d\u0010X\"\u0004\u0008e\u0010ZR2\u0010j\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u000c\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008g\u0010]\u001a\u0004\u0008h\u0010_\"\u0004\u0008i\u0010aR*\u0010n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010T8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008k\u0010V\u001a\u0004\u0008l\u0010X\"\u0004\u0008m\u0010ZR\u001d\u0010t\u001a\u0004\u0018\u00010o8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008p\u0010q\u001a\u0004\u0008r\u0010sR\u001d\u0010y\u001a\u0004\u0018\u00010u8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008v\u0010q\u001a\u0004\u0008w\u0010xR\u0018\u0010}\u001a\u0004\u0018\u00010z8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008{\u0010|R$\u0010\u0081\u0001\u001a\u00020\t8\u0014@\u0014X\u0094\u000e\u00a2\u0006\u0013\n\u0004\u0008~\u0010I\u001a\u0004\u0008~\u0010\u000b\"\u0005\u0008\u007f\u0010\u0080\u0001R\u001a\u0010\u0083\u0001\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0082\u0001\u0010/R\u0018\u0010\u0085\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0084\u0001\u0010IR\u0018\u0010\u0087\u0001\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0086\u0001\u0010/R)\u0010\u008a\u0001\u001a\u00020\t2\u0007\u0010\u0088\u0001\u001a\u00020\t8T@TX\u0094\u000e\u00a2\u0006\u000f\u001a\u0005\u0008\u0082\u0001\u0010\u000b\"\u0006\u0008\u0089\u0001\u0010\u0080\u0001\u00a8\u0006\u008e\u0001"
    }
    d2 = {
        "Lteam/opay/pay/cashier/result/ShareDialogFragment;",
        "Lteam/opay/core/base/BaseSheetFragmentV2;",
        "Lomd;",
        "<init>",
        "()V",
        "",
        "h0",
        "l0",
        "Y",
        "",
        "w0",
        "()Z",
        "",
        "packageName",
        "Lkotlin/Function1;",
        "callback",
        "e0",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V",
        "a0",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "name",
        "Lteam/opay/pay/oshare/api/OSharePlatform;",
        "c0",
        "(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/pay/oshare/api/OSharePlatform;",
        "d0",
        "(Ljava/lang/String;)Lteam/opay/pay/oshare/api/OSharePlatform;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onDismiss",
        "(Landroid/content/DialogInterface;)V",
        "Landroid/content/Context;",
        "context",
        "oSharePlatform",
        "content",
        "sharePicUrl",
        "smsReceiverPhone",
        "t0",
        "(Landroid/content/Context;Lteam/opay/pay/oshare/api/OSharePlatform;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "onResume",
        "onStart",
        "k",
        "Ljava/lang/String;",
        "shareContent",
        "l",
        "shareUrl",
        "m",
        "source",
        "n",
        "o",
        "shareTopPicUrl",
        "p",
        "title",
        "q",
        "logo",
        "r",
        "contactCopywriting",
        "s",
        "contactButton",
        "t",
        "copyContent",
        "",
        "u",
        "Ljava/lang/Integer;",
        "titleGravity",
        "v",
        "titleMaxLines",
        "w",
        "Z",
        "needRequestContact",
        "x",
        "useShortUrl",
        "y",
        "needJoinShareType",
        "z",
        "getSmsReceiverPhone",
        "()Ljava/lang/String;",
        "setSmsReceiverPhone",
        "(Ljava/lang/String;)V",
        "Lkotlin/Function0;",
        "A",
        "Lkotlin/jvm/functions/Function0;",
        "getOnShareTopClick",
        "()Lkotlin/jvm/functions/Function0;",
        "s0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onShareTopClick",
        "B",
        "Lkotlin/jvm/functions/Function1;",
        "getOnShareClickCallBack",
        "()Lkotlin/jvm/functions/Function1;",
        "r0",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onShareClickCallBack",
        "C",
        "getOnDismissCallBack",
        "p0",
        "onDismissCallBack",
        "D",
        "getOnShareChannelClickedListener",
        "q0",
        "onShareChannelClickedListener",
        "E",
        "getOnCopyClickedListener",
        "o0",
        "onCopyClickedListener",
        "Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;",
        "F",
        "Lid8;",
        "b0",
        "()Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;",
        "shareConfig",
        "Lteam/opay/pay/cashier/result/ShareViewModel;",
        "G",
        "g0",
        "()Lteam/opay/pay/cashier/result/ShareViewModel;",
        "viewModel",
        "Lteam/opay/pay/cashier/result/SharePlatformsAdapter;",
        "H",
        "Lteam/opay/pay/cashier/result/SharePlatformsAdapter;",
        "mAdapter",
        "I",
        "setSupportBgTransparent",
        "(Z)V",
        "supportBgTransparent",
        "J",
        "sceneType",
        "K",
        "isClickShare",
        "L",
        "platform",
        "value",
        "setSupportCancelable",
        "supportCancelable",
        "M",
        "Companion",
        "ShareParamsData",
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
.field public static final M:Lteam/opay/pay/cashier/result/ShareDialogFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public A:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public B:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public C:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public D:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public E:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
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

.field public H:Lteam/opay/pay/cashier/result/SharePlatformsAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public I:Z

.field public J:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public K:Z

.field public L:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public u:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public v:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lteam/opay/pay/cashier/result/ShareDialogFragment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lteam/opay/pay/cashier/result/ShareDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->M:Lteam/opay/pay/cashier/result/ShareDialogFragment$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/result/ShareDialogFragment$1;->INSTANCE:Lteam/opay/pay/cashier/result/ShareDialogFragment$1;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lteam/opay/core/base/BaseSheetFragmentV2;-><init>(Lhm6;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "share content"

    .line 7
    .line 8
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->k:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->l:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->m:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->n:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->o:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->p:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->q:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->z:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v1, Lsld;

    .line 27
    .line 28
    invoke-direct {v1}, Lsld;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iput-object v1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->F:Lid8;

    .line 36
    .line 37
    new-instance v1, Ltld;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Ltld;-><init>(Lteam/opay/pay/cashier/result/ShareDialogFragment;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lid8;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->G:Lid8;

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->I:Z

    .line 50
    .line 51
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->L:Ljava/lang/String;

    .line 52
    .line 53
    return-void
.end method

.method public static synthetic P()Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;
    .locals 1

    .line 1
    invoke-static {}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->v0()Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic Q(Lteam/opay/pay/cashier/result/ShareDialogFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->Z(Lteam/opay/pay/cashier/result/ShareDialogFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;Lteam/opay/pay/cashier/result/ShareDialogFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->m0(Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;Lteam/opay/pay/cashier/result/ShareDialogFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic S(Lteam/opay/pay/cashier/result/ShareDialogFragment;Ljava/lang/String;Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;ILjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->n0(Lteam/opay/pay/cashier/result/ShareDialogFragment;Ljava/lang/String;Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;ILjava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T(Lteam/opay/pay/cashier/result/ShareDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->i0(Lteam/opay/pay/cashier/result/ShareDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic U(Lteam/opay/pay/cashier/result/ShareDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->j0(Lteam/opay/pay/cashier/result/ShareDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic V(Lteam/opay/pay/cashier/result/ShareDialogFragment;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->f0(Lteam/opay/pay/cashier/result/ShareDialogFragment;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic W(Lteam/opay/pay/cashier/result/ShareDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->k0(Lteam/opay/pay/cashier/result/ShareDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic X(Lteam/opay/pay/cashier/result/ShareDialogFragment;)Lteam/opay/pay/cashier/result/ShareViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->x0(Lteam/opay/pay/cashier/result/ShareDialogFragment;)Lteam/opay/pay/cashier/result/ShareViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final Z(Lteam/opay/pay/cashier/result/ShareDialogFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 5

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_7

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_7

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->H:Lteam/opay/pay/cashier/result/SharePlatformsAdapter;

    .line 27
    .line 28
    if-eqz v0, :cond_6

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_6

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, -0x1

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;

    .line 53
    .line 54
    invoke-virtual {v2}, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;->getPackageName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v4, "opay.share.contact"

    .line 59
    .line 60
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/4 v1, -0x1

    .line 71
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eq v1, v3, :cond_3

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    const/4 v0, 0x0

    .line 83
    :goto_2
    if-eqz v0, :cond_6

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iget-object v1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->H:Lteam/opay/pay/cashier/result/SharePlatformsAdapter;

    .line 90
    .line 91
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const-string v2, "getData(...)"

    .line 99
    .line 100
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;

    .line 108
    .line 109
    if-eqz v1, :cond_5

    .line 110
    .line 111
    invoke-virtual {v1, p1}, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;->setTg(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-nez p1, :cond_4

    .line 119
    .line 120
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 121
    .line 122
    return-object p0

    .line 123
    :cond_4
    sget v2, Lteam/opay/pay/R$drawable;->gradient_225_ff4369_ff8784:I

    .line 124
    .line 125
    invoke-static {p1, v2}, Lzq2;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {v1, p1}, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;->setTgBg(Landroid/graphics/drawable/Drawable;)V

    .line 130
    .line 131
    .line 132
    :cond_5
    iget-object p0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->H:Lteam/opay/pay/cashier/result/SharePlatformsAdapter;

    .line 133
    .line 134
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 138
    .line 139
    .line 140
    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 141
    .line 142
    return-object p0

    .line 143
    :cond_7
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 144
    .line 145
    return-object p0
.end method

.method public static final f0(Lteam/opay/pay/cashier/result/ShareDialogFragment;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->a(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method public static final i0(Lteam/opay/pay/cashier/result/ShareDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->A:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final j0(Lteam/opay/pay/cashier/result/ShareDialogFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object v1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->p:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->t:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    :cond_1
    invoke-static {v0, v1, v2}, Lteam/opay/core/android/ContextKt;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget v1, Lteam/opay/pay/R$string;->clipboard_copy:I

    .line 26
    .line 27
    invoke-static {v1}, Ljmf;->k(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lkmf;->J(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    return-object p0
.end method

.method public static final k0(Lteam/opay/pay/cashier/result/ShareDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final l0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_18

    .line 6
    .line 7
    const-string v1, "share_params_data"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    instance-of v2, v1, Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    check-cast v1, Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    const-string v2, ""

    .line 22
    .line 23
    if-nez v1, :cond_c

    .line 24
    .line 25
    const-string v1, "share_top_pic_url"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    move-object v1, v2

    .line 34
    :cond_1
    iput-object v1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->o:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "share_content"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    move-object v1, v2

    .line 45
    :cond_2
    iput-object v1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->k:Ljava/lang/String;

    .line 46
    .line 47
    const-string v1, "share_link_url"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-nez v1, :cond_3

    .line 54
    .line 55
    move-object v1, v2

    .line 56
    :cond_3
    iput-object v1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->l:Ljava/lang/String;

    .line 57
    .line 58
    const-string v1, "share_source"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-nez v1, :cond_4

    .line 65
    .line 66
    move-object v1, v2

    .line 67
    :cond_4
    iput-object v1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->m:Ljava/lang/String;

    .line 68
    .line 69
    const-string v1, "share_pic_url"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-nez v1, :cond_5

    .line 76
    .line 77
    move-object v1, v2

    .line 78
    :cond_5
    iput-object v1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->n:Ljava/lang/String;

    .line 79
    .line 80
    const-string v1, "sms_receiver_phone"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-nez v1, :cond_6

    .line 87
    .line 88
    move-object v1, v2

    .line 89
    :cond_6
    iput-object v1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->z:Ljava/lang/String;

    .line 90
    .line 91
    const-string v1, "share_dialog_title"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-nez v1, :cond_7

    .line 98
    .line 99
    move-object v1, v2

    .line 100
    :cond_7
    iput-object v1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->p:Ljava/lang/String;

    .line 101
    .line 102
    const-string v1, "SHARE_DIALOG_LOGO"

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-nez v1, :cond_8

    .line 109
    .line 110
    move-object v1, v2

    .line 111
    :cond_8
    iput-object v1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->q:Ljava/lang/String;

    .line 112
    .line 113
    const-string v1, "share_dialog_contact_button"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    if-nez v1, :cond_9

    .line 120
    .line 121
    move-object v1, v2

    .line 122
    :cond_9
    iput-object v1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->s:Ljava/lang/String;

    .line 123
    .line 124
    const-string v1, "share_dialog_contact_copywriting"

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-nez v1, :cond_a

    .line 131
    .line 132
    move-object v1, v2

    .line 133
    :cond_a
    iput-object v1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->r:Ljava/lang/String;

    .line 134
    .line 135
    const-string v1, "share_dialog_scene_type"

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    if-nez v1, :cond_b

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_b
    move-object v2, v1

    .line 145
    :goto_1
    iput-object v2, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->J:Ljava/lang/String;

    .line 146
    .line 147
    const-string v1, "share_copy_content"

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    iput-object v2, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->t:Ljava/lang/String;

    .line 154
    .line 155
    const-string v2, "share_need_request_contact"

    .line 156
    .line 157
    const/4 v3, 0x0

    .line 158
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    iput-boolean v2, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->w:Z

    .line 163
    .line 164
    const-string v2, "share_use_short_url"

    .line 165
    .line 166
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    iput-boolean v2, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->x:Z

    .line 171
    .line 172
    const-string v2, "share_join_share_type"

    .line 173
    .line 174
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    iput-boolean v2, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->y:Z

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->t:Ljava/lang/String;

    .line 185
    .line 186
    goto/16 :goto_3

    .line 187
    .line 188
    :cond_c
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;->getShareTopPicUrl()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    if-nez v0, :cond_d

    .line 193
    .line 194
    move-object v0, v2

    .line 195
    :cond_d
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->o:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;->getShareContent()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    if-nez v0, :cond_e

    .line 202
    .line 203
    move-object v0, v2

    .line 204
    :cond_e
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->k:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;->getShareLinkUrl()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    if-nez v0, :cond_f

    .line 211
    .line 212
    move-object v0, v2

    .line 213
    :cond_f
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->l:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;->getSource()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    if-nez v0, :cond_10

    .line 220
    .line 221
    move-object v0, v2

    .line 222
    :cond_10
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->m:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;->getSharePicUrl()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    if-nez v0, :cond_11

    .line 229
    .line 230
    move-object v0, v2

    .line 231
    :cond_11
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->n:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;->getSmsReceiverPhone()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    if-nez v0, :cond_12

    .line 238
    .line 239
    move-object v0, v2

    .line 240
    :cond_12
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->z:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;->getTitle()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    if-nez v0, :cond_13

    .line 247
    .line 248
    move-object v0, v2

    .line 249
    :cond_13
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->p:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;->getLogoUrl()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    if-nez v0, :cond_14

    .line 256
    .line 257
    move-object v0, v2

    .line 258
    :cond_14
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->q:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;->getContactButton()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    if-nez v0, :cond_15

    .line 265
    .line 266
    move-object v0, v2

    .line 267
    :cond_15
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->s:Ljava/lang/String;

    .line 268
    .line 269
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;->getContactCopywriting()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    if-nez v0, :cond_16

    .line 274
    .line 275
    move-object v0, v2

    .line 276
    :cond_16
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->r:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;->getSceneType()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    if-nez v0, :cond_17

    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_17
    move-object v2, v0

    .line 286
    :goto_2
    iput-object v2, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->J:Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;->getCopyContent()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->t:Ljava/lang/String;

    .line 293
    .line 294
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;->getTitleGravity()Ljava/lang/Integer;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->u:Ljava/lang/Integer;

    .line 299
    .line 300
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;->getTitleMaxLine()Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    iput-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->v:Ljava/lang/Integer;

    .line 305
    .line 306
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;->getNeedRequestContact()Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    iput-boolean v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->w:Z

    .line 311
    .line 312
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;->getUseShortUrl()Z

    .line 313
    .line 314
    .line 315
    move-result v0

    .line 316
    iput-boolean v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->x:Z

    .line 317
    .line 318
    invoke-virtual {v1}, Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;->getNeedJoinShareType()Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    iput-boolean v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->y:Z

    .line 323
    .line 324
    :cond_18
    :goto_3
    return-void
.end method

.method public static final m0(Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;Lteam/opay/pay/cashier/result/ShareDialogFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;->getPlatforms()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2, p4}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p2, 0x0

    .line 19
    :goto_0
    iget-object p3, p1, Lteam/opay/pay/cashier/result/ShareDialogFragment;->D:Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_1
    new-instance p3, Luld;

    .line 31
    .line 32
    invoke-direct {p3, p1, p2, p0, p4}, Luld;-><init>(Lteam/opay/pay/cashier/result/ShareDialogFragment;Ljava/lang/String;Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2, p3}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->e0(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static final n0(Lteam/opay/pay/cashier/result/ShareDialogFragment;Ljava/lang/String;Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;ILjava/lang/String;)Lkotlin/Unit;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->m:Ljava/lang/String;

    .line 5
    .line 6
    const-string v4, "invite_friend"

    .line 7
    .line 8
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const-string v4, "share_way"

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sget-object v3, Lx7b;->a:Lx7b;

    .line 17
    .line 18
    const-string v5, "SenceType"

    .line 19
    .line 20
    iget-object v6, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->J:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v5, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-static {v4, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    new-array v1, v1, [Lkotlin/Pair;

    .line 35
    .line 36
    aput-object v5, v1, v0

    .line 37
    .line 38
    aput-object v4, v1, v2

    .line 39
    .line 40
    const-string v0, "mgm_referal_share_way_share_button_click"

    .line 41
    .line 42
    invoke-virtual {v3, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    sget-object v3, Lx7b;->a:Lx7b;

    .line 47
    .line 48
    const-string v5, "entry_source"

    .line 49
    .line 50
    iget-object v6, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->m:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v5, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-static {v4, v6}, Ltdf;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    new-array v1, v1, [Lkotlin/Pair;

    .line 65
    .line 66
    aput-object v5, v1, v0

    .line 67
    .line 68
    aput-object v4, v1, v2

    .line 69
    .line 70
    const-string v0, "share_way_share_button_click"

    .line 71
    .line 72
    invoke-virtual {v3, v0, v1}, Lx7b;->g(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    if-eqz p4, :cond_2

    .line 76
    .line 77
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->k:Ljava/lang/String;

    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, "\n"

    .line 95
    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p4

    .line 106
    :goto_1
    move-object v6, p4

    .line 107
    goto :goto_3

    .line 108
    :cond_2
    :goto_2
    iget-object p4, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->k:Ljava/lang/String;

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :goto_3
    const-string p4, "opay.share.contact"

    .line 112
    .line 113
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    const/4 p4, 0x0

    .line 118
    if-eqz p1, :cond_6

    .line 119
    .line 120
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->w0()Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    new-instance p1, Lteam/opay/core/settings/NoClearStorage;

    .line 127
    .line 128
    sget-object p2, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 129
    .line 130
    invoke-virtual {p2}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p2}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-direct {p1, p2}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 139
    .line 140
    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 142
    .line 143
    .line 144
    move-result-wide p2

    .line 145
    invoke-virtual {p1, p2, p3}, Lteam/opay/core/settings/NoClearStorage;->K1(J)V

    .line 146
    .line 147
    .line 148
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-eqz p1, :cond_5

    .line 153
    .line 154
    new-instance p2, Landroid/content/Intent;

    .line 155
    .line 156
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    const-class v0, Lteam/opay/pay/cashier/result/ShareContactActivity;

    .line 161
    .line 162
    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->g0()Lteam/opay/pay/cashier/result/ShareViewModel;

    .line 166
    .line 167
    .line 168
    move-result-object p3

    .line 169
    if-eqz p3, :cond_4

    .line 170
    .line 171
    invoke-virtual {p3}, Lteam/opay/pay/cashier/result/ShareViewModel;->t()Ljava/util/ArrayList;

    .line 172
    .line 173
    .line 174
    move-result-object p4

    .line 175
    :cond_4
    const-string p3, "key_user_mobiles"

    .line 176
    .line 177
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 178
    .line 179
    .line 180
    const-string p3, "key_button_content"

    .line 181
    .line 182
    iget-object p4, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->s:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    .line 186
    .line 187
    const-string p3, "key_button_tag"

    .line 188
    .line 189
    iget-object p4, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->r:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    .line 193
    .line 194
    const-string p3, "key_contact_link"

    .line 195
    .line 196
    invoke-virtual {p2, p3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    .line 198
    .line 199
    const-string p3, "key_entry_source"

    .line 200
    .line 201
    iget-object p4, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->m:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 207
    .line 208
    .line 209
    :cond_5
    iput-boolean v2, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->K:Z

    .line 210
    .line 211
    const-string p1, "contact"

    .line 212
    .line 213
    iput-object p1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->L:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragment;->dismiss()V

    .line 216
    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_6
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;->getPlatforms()Ljava/util/ArrayList;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    check-cast p1, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;

    .line 228
    .line 229
    if-eqz p1, :cond_7

    .line 230
    .line 231
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;->getPackageName()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    goto :goto_4

    .line 236
    :cond_7
    move-object p1, p4

    .line 237
    :goto_4
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;->getPlatforms()Ljava/util/ArrayList;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    check-cast p2, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;

    .line 246
    .line 247
    if-eqz p2, :cond_8

    .line 248
    .line 249
    invoke-virtual {p2}, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;->getName()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p4

    .line 253
    :cond_8
    if-nez p4, :cond_9

    .line 254
    .line 255
    const-string p4, ""

    .line 256
    .line 257
    :cond_9
    invoke-virtual {p0, p1, p4}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->c0(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/pay/oshare/api/OSharePlatform;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    if-eqz v5, :cond_a

    .line 262
    .line 263
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    iget-object v8, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->z:Ljava/lang/String;

    .line 268
    .line 269
    const/16 v9, 0x8

    .line 270
    .line 271
    const/4 v10, 0x0

    .line 272
    const/4 v7, 0x0

    .line 273
    move-object v3, p0

    .line 274
    invoke-static/range {v3 .. v10}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->u0(Lteam/opay/pay/cashier/result/ShareDialogFragment;Landroid/content/Context;Lteam/opay/pay/oshare/api/OSharePlatform;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    :cond_a
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 278
    .line 279
    return-object p0
.end method

.method public static synthetic u0(Lteam/opay/pay/cashier/result/ShareDialogFragment;Landroid/content/Context;Lteam/opay/pay/oshare/api/OSharePlatform;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p6, 0x8

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    if-eqz p7, :cond_0

    .line 6
    .line 7
    move-object v5, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v5, p4

    .line 10
    :goto_0
    and-int/lit8 p4, p6, 0x10

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    .line 14
    move-object v6, v0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move-object v6, p5

    .line 17
    :goto_1
    move-object v1, p0

    .line 18
    move-object v2, p1

    .line 19
    move-object v3, p2

    .line 20
    move-object v4, p3

    .line 21
    invoke-virtual/range {v1 .. v6}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->t0(Landroid/content/Context;Lteam/opay/pay/oshare/api/OSharePlatform;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static final v0()Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;->Companion:Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$Companion;->a()Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static final x0(Lteam/opay/pay/cashier/result/ShareDialogFragment;)Lteam/opay/pay/cashier/result/ShareViewModel;
    .locals 1

    .line 1
    sget-object v0, Lteam/opay/pay/cashier/result/ShareViewModel;->f:Lteam/opay/pay/cashier/result/ShareViewModel$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lteam/opay/pay/cashier/result/ShareViewModel$Companion;->a(Landroidx/fragment/app/Fragment;)Lteam/opay/pay/cashier/result/ShareViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->I:Z

    .line 2
    .line 3
    return v0
.end method

.method public J()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

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
    const-string v2, "share_touch_cancelable"

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-static {v0, v2}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const-string v3, "share_params_data"

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move-object v0, v1

    .line 48
    :goto_1
    instance-of v3, v0, Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    check-cast v0, Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move-object v0, v1

    .line 56
    :goto_2
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/ShareDialogFragment$ShareParamsData;->getShareCancelOnTouchOutside()Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :cond_3
    invoke-static {v1, v2}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    goto :goto_3

    .line 76
    :cond_4
    const/4 v0, 0x0

    .line 77
    :goto_3
    return v0
.end method

.method public final Y()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "requireActivity(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "android.permission.READ_CONTACTS"

    .line 11
    .line 12
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Lxnb;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->g0()Lteam/opay/pay/cashier/result/ShareViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "getViewLifecycleOwner(...)"

    .line 33
    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Lzld;

    .line 38
    .line 39
    invoke-direct {v2, p0}, Lzld;-><init>(Lteam/opay/pay/cashier/result/ShareDialogFragment;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lteam/opay/pay/cashier/result/ShareViewModel;->w(Lag8;Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final a0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sparse-switch v0, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :sswitch_0
    const-string v0, "android.intent.action.SENDTO"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p1, "sms"

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :sswitch_1
    const-string v0, "com.facebook.katana"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string p1, "facebook"

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :sswitch_2
    const-string v0, "com.twitter.android"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const-string p1, "twitter"

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :sswitch_3
    const-string v0, "opay.share.contact"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const-string p1, "contact"

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :sswitch_4
    const-string v0, "android.intent.action.system"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const-string p1, "more"

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :sswitch_5
    const-string v0, "com.whatsapp"

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_5

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    const-string p1, "whatsapp"

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_6
    :goto_0
    const/4 p1, 0x0

    .line 84
    :goto_1
    return-object p1

    .line 85
    :sswitch_data_0
    .sparse-switch
        -0x5c4004a1 -> :sswitch_5
        -0x4b276ccc -> :sswitch_4
        -0x19091a44 -> :sswitch_3
        0xa20b87 -> :sswitch_2
        0x2a9664f1 -> :sswitch_1
        0x7b4f3108 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b0()Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->F:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;

    .line 8
    .line 9
    return-object v0
.end method

.method public final c0(Ljava/lang/String;Ljava/lang/String;)Lteam/opay/pay/oshare/api/OSharePlatform;
    .locals 1

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sparse-switch v0, :sswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :sswitch_0
    const-string v0, "android.intent.action.SENDTO"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object p1, Lteam/opay/pay/oshare/api/OSharePlatform;->SMS:Lteam/opay/pay/oshare/api/OSharePlatform;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :sswitch_1
    const-string v0, "com.facebook.katana"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget-object p1, Lteam/opay/pay/oshare/api/OSharePlatform;->Facebook:Lteam/opay/pay/oshare/api/OSharePlatform;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :sswitch_2
    const-string v0, "com.twitter.android"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    sget-object p1, Lteam/opay/pay/oshare/api/OSharePlatform;->Twitter:Lteam/opay/pay/oshare/api/OSharePlatform;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :sswitch_3
    const-string v0, "android.intent.action.system"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    sget-object p1, Lteam/opay/pay/oshare/api/OSharePlatform;->System:Lteam/opay/pay/oshare/api/OSharePlatform;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :sswitch_4
    const-string v0, "com.whatsapp"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    sget-object p1, Lteam/opay/pay/oshare/api/OSharePlatform;->WhatsApp:Lteam/opay/pay/oshare/api/OSharePlatform;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_5
    :goto_0
    invoke-virtual {p0, p2}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->d0(Ljava/lang/String;)Lteam/opay/pay/oshare/api/OSharePlatform;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :goto_1
    return-object p1

    .line 76
    nop

    .line 77
    :sswitch_data_0
    .sparse-switch
        -0x5c4004a1 -> :sswitch_4
        -0x4b276ccc -> :sswitch_3
        0xa20b87 -> :sswitch_2
        0x2a9664f1 -> :sswitch_1
        0x7b4f3108 -> :sswitch_0
    .end sparse-switch
.end method

.method public final d0(Ljava/lang/String;)Lteam/opay/pay/oshare/api/OSharePlatform;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :sswitch_0
    const-string v0, "WhatsApp"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object p1, Lteam/opay/pay/oshare/api/OSharePlatform;->WhatsApp:Lteam/opay/pay/oshare/api/OSharePlatform;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :sswitch_1
    const-string v0, "Twitter"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object p1, Lteam/opay/pay/oshare/api/OSharePlatform;->Twitter:Lteam/opay/pay/oshare/api/OSharePlatform;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :sswitch_2
    const-string v0, "Facebook"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    sget-object p1, Lteam/opay/pay/oshare/api/OSharePlatform;->Facebook:Lteam/opay/pay/oshare/api/OSharePlatform;

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :sswitch_3
    const-string v0, "SMS"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    sget-object p1, Lteam/opay/pay/oshare/api/OSharePlatform;->SMS:Lteam/opay/pay/oshare/api/OSharePlatform;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :sswitch_4
    const-string v0, "System"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_4

    .line 64
    .line 65
    :goto_0
    const/4 p1, 0x0

    .line 66
    goto :goto_1

    .line 67
    :cond_4
    sget-object p1, Lteam/opay/pay/oshare/api/OSharePlatform;->System:Lteam/opay/pay/oshare/api/OSharePlatform;

    .line 68
    .line 69
    :goto_1
    return-object p1

    .line 70
    nop

    .line 71
    :sswitch_data_0
    .sparse-switch
        -0x6b7ea1b1 -> :sswitch_4
        0x14139 -> :sswitch_3
        0x217bfee6 -> :sswitch_2
        0x2c9a4253 -> :sswitch_1
        0x772c5592 -> :sswitch_0
    .end sparse-switch
.end method

.method public final e0(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->y:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->l:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->l:Ljava/lang/String;

    .line 28
    .line 29
    :goto_0
    iget-boolean v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->x:Z

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-object v1, Lteam/opay/pay/util/OpayLoadingWindow;->m:Lteam/opay/pay/util/OpayLoadingWindow$Companion;

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    move-object v2, p0

    .line 40
    invoke-static/range {v1 .. v6}, Lteam/opay/pay/util/OpayLoadingWindow$Companion;->g(Lteam/opay/pay/util/OpayLoadingWindow$Companion;Landroidx/fragment/app/Fragment;ZZILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->g0()Lteam/opay/pay/cashier/result/ShareViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Lag8;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "getViewLifecycleOwner(...)"

    .line 54
    .line 55
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v2, Lteam/opay/pay/api/LUrlData;

    .line 59
    .line 60
    invoke-direct {v2, p1}, Lteam/opay/pay/api/LUrlData;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Lyld;

    .line 64
    .line 65
    invoke-direct {p1, p0, p2}, Lyld;-><init>(Lteam/opay/pay/cashier/result/ShareDialogFragment;Lkotlin/jvm/functions/Function1;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1, v2, p1}, Lteam/opay/pay/cashier/result/ShareViewModel;->u(Lag8;Lteam/opay/pay/api/LUrlData;Lkotlin/jvm/functions/Function1;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_1
    return-void
.end method

.method public final g0()Lteam/opay/pay/cashier/result/ShareViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->G:Lid8;

    .line 2
    .line 3
    invoke-interface {v0}, Lid8;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lteam/opay/pay/cashier/result/ShareViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final h0()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->l0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->q:Ljava/lang/String;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lomd;

    .line 17
    .line 18
    iget-object v0, v0, Lomd;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 19
    .line 20
    const-string v1, "icLogo"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lomd;

    .line 33
    .line 34
    iget-object v2, v0, Lomd;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 35
    .line 36
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->q:Ljava/lang/String;

    .line 40
    .line 41
    sget v4, Lteam/opay/pay/R$mipmap;->logo:I

    .line 42
    .line 43
    const/4 v6, 0x4

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-static/range {v2 .. v7}, Lme7;->v(Landroid/widget/ImageView;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lomd;

    .line 54
    .line 55
    iget-object v0, v0, Lomd;->c:Lcom/google/android/material/button/MaterialButton;

    .line 56
    .line 57
    const/4 v1, 0x4

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->p:Ljava/lang/String;

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-lez v0, :cond_1

    .line 68
    .line 69
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lomd;

    .line 74
    .line 75
    iget-object v0, v0, Lomd;->d:Landroid/widget/TextView;

    .line 76
    .line 77
    iget-object v1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->p:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->u:Ljava/lang/Integer;

    .line 83
    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lomd;

    .line 91
    .line 92
    iget-object v0, v0, Lomd;->d:Landroid/widget/TextView;

    .line 93
    .line 94
    iget-object v1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->u:Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 104
    .line 105
    .line 106
    :cond_2
    iget-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->v:Ljava/lang/Integer;

    .line 107
    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lomd;

    .line 115
    .line 116
    iget-object v0, v0, Lomd;->d:Landroid/widget/TextView;

    .line 117
    .line 118
    iget-object v1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->v:Ljava/lang/Integer;

    .line 119
    .line 120
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 128
    .line 129
    .line 130
    :cond_3
    iget-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->o:Ljava/lang/String;

    .line 131
    .line 132
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-lez v0, :cond_4

    .line 137
    .line 138
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    check-cast v0, Lomd;

    .line 143
    .line 144
    iget-object v0, v0, Lomd;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 145
    .line 146
    const/4 v1, 0x0

    .line 147
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    if-eqz v0, :cond_4

    .line 155
    .line 156
    new-instance v2, Lteam/opay/pay/message/utils/GlideRoundedCornersTransformation;

    .line 157
    .line 158
    const/16 v3, 0x10

    .line 159
    .line 160
    invoke-static {v3}, Llmf;->d(I)I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    sget-object v4, Lteam/opay/pay/message/utils/GlideRoundedCornersTransformation$CornerType;->ALL:Lteam/opay/pay/message/utils/GlideRoundedCornersTransformation$CornerType;

    .line 165
    .line 166
    invoke-direct {v2, v3, v1, v4}, Lteam/opay/pay/message/utils/GlideRoundedCornersTransformation;-><init>(IILteam/opay/pay/message/utils/GlideRoundedCornersTransformation$CornerType;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v2}, Lcom/bumptech/glide/request/RequestOptions;->s0(Locf;)Lcom/bumptech/glide/request/RequestOptions;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    const-string v2, "bitmapTransform(...)"

    .line 174
    .line 175
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-static {v0}, Lcom/bumptech/glide/a;->u(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iget-object v2, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->o:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->u(Ljava/lang/String;)Ljpc;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    sget v2, Lteam/opay/pay/R$mipmap;->bg_banner_default:I

    .line 189
    .line 190
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->Z(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Ljpc;

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->n(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Ljpc;

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljpc;->t0(Lcom/bumptech/glide/request/BaseRequestOptions;)Ljpc;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    check-cast v1, Lomd;

    .line 211
    .line 212
    iget-object v1, v1, Lomd;->h:Landroid/widget/ImageView;

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ljpc;->F0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Lomd;

    .line 222
    .line 223
    iget-object v0, v0, Lomd;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 224
    .line 225
    const-string v1, "shareTop"

    .line 226
    .line 227
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    new-instance v1, Lvld;

    .line 231
    .line 232
    invoke-direct {v1, p0}, Lvld;-><init>(Lteam/opay/pay/cashier/result/ShareDialogFragment;)V

    .line 233
    .line 234
    .line 235
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 236
    .line 237
    .line 238
    :cond_4
    iget-boolean v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->w:Z

    .line 239
    .line 240
    if-eqz v0, :cond_8

    .line 241
    .line 242
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->b0()Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    const/4 v1, 0x0

    .line 247
    if-eqz v0, :cond_7

    .line 248
    .line 249
    invoke-virtual {v0}, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;->getPlatforms()Ljava/util/ArrayList;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    if-eqz v0, :cond_7

    .line 254
    .line 255
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-eqz v2, :cond_6

    .line 264
    .line 265
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    move-object v3, v2

    .line 270
    check-cast v3, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;

    .line 271
    .line 272
    invoke-virtual {v3}, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;->getPackageName()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    const-string v4, "opay.share.contact"

    .line 277
    .line 278
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    if-eqz v3, :cond_5

    .line 283
    .line 284
    move-object v1, v2

    .line 285
    :cond_6
    check-cast v1, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$SharePlatform;

    .line 286
    .line 287
    :cond_7
    if-eqz v1, :cond_8

    .line 288
    .line 289
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->w0()Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_8

    .line 294
    .line 295
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->Y()V

    .line 296
    .line 297
    .line 298
    :cond_8
    iget-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->t:Ljava/lang/String;

    .line 299
    .line 300
    if-eqz v0, :cond_a

    .line 301
    .line 302
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-nez v0, :cond_9

    .line 307
    .line 308
    goto :goto_0

    .line 309
    :cond_9
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    check-cast v0, Lomd;

    .line 314
    .line 315
    iget-object v0, v0, Lomd;->c:Lcom/google/android/material/button/MaterialButton;

    .line 316
    .line 317
    const-string v1, "btnCopy"

    .line 318
    .line 319
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-static {v0}, Lteam/opay/core/android/ViewKt;->v(Landroid/view/View;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    check-cast v0, Lomd;

    .line 330
    .line 331
    iget-object v0, v0, Lomd;->c:Lcom/google/android/material/button/MaterialButton;

    .line 332
    .line 333
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    new-instance v1, Lwld;

    .line 337
    .line 338
    invoke-direct {v1, p0}, Lwld;-><init>(Lteam/opay/pay/cashier/result/ShareDialogFragment;)V

    .line 339
    .line 340
    .line 341
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 342
    .line 343
    .line 344
    :cond_a
    :goto_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    check-cast v0, Lomd;

    .line 349
    .line 350
    iget-object v0, v0, Lomd;->b:Landroid/widget/ImageView;

    .line 351
    .line 352
    const-string v1, "btnClose"

    .line 353
    .line 354
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    new-instance v1, Lxld;

    .line 358
    .line 359
    invoke-direct {v1, p0}, Lxld;-><init>(Lteam/opay/pay/cashier/result/ShareDialogFragment;)V

    .line 360
    .line 361
    .line 362
    invoke-static {v0, v1}, Lfe1;->b(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 363
    .line 364
    .line 365
    return-void
.end method

.method public final o0(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->E:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->C:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->K:Z

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->K:Z

    .line 10
    .line 11
    iget-object v0, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->B:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->L:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Lteam/opay/core/base/BaseSheetFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v2, "share_bg_transparent"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v1

    .line 23
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-static {v0, v2}, Loj2;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    :cond_1
    if-eqz v1, :cond_2

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 57
    .line 58
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lteam/opay/pay/cashier/result/ShareDialogFragment;->h0()V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;->Companion:Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$Companion;

    .line 13
    .line 14
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher$Companion;->a()Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;->getPlatforms()Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    const/4 v0, 0x5

    .line 29
    if-le p2, v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lomd;

    .line 36
    .line 37
    iget-object p2, p2, Lomd;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    .line 39
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Lomd;

    .line 58
    .line 59
    iget-object p2, p2, Lomd;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    .line 61
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;->getPlatforms()Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    new-instance p2, Lteam/opay/pay/cashier/result/SharePlatformsAdapter;

    .line 82
    .line 83
    invoke-virtual {p1}, Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;->getPlatforms()Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {p2, v0}, Lteam/opay/pay/cashier/result/SharePlatformsAdapter;-><init>(Ljava/util/List;)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Lrld;

    .line 91
    .line 92
    invoke-direct {v0, p1, p0}, Lrld;-><init>(Lteam/opay/pay/cashier/result/ShareConfigFeatureSwitcher;Lteam/opay/pay/cashier/result/ShareDialogFragment;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 96
    .line 97
    .line 98
    iput-object p2, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->H:Lteam/opay/pay/cashier/result/SharePlatformsAdapter;

    .line 99
    .line 100
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Lomd;

    .line 105
    .line 106
    iget-object p1, p1, Lomd;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    .line 108
    iget-object p2, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->H:Lteam/opay/pay/cashier/result/SharePlatformsAdapter;

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lteam/opay/core/base/BaseSheetFragmentV2;->getBinding()Lxyf;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Lomd;

    .line 118
    .line 119
    iget-object p1, p1, Lomd;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    .line 121
    new-instance p2, Lteam/opay/pay/util/ShareItemTagDecoration;

    .line 122
    .line 123
    invoke-direct {p2}, Lteam/opay/pay/util/ShareItemTagDecoration;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 127
    .line 128
    .line 129
    :cond_1
    return-void
.end method

.method public final p0(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->C:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final q0(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->D:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final r0(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->B:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final s0(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->A:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final t0(Landroid/content/Context;Lteam/opay/pay/oshare/api/OSharePlatform;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lteam/opay/pay/oshare/api/OSharePlatform;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    const-string v1, "oSharePlatform"

    .line 3
    .line 4
    move-object/from16 v12, p2

    .line 5
    .line 6
    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v1, "content"

    .line 10
    .line 11
    move-object/from16 v5, p3

    .line 12
    .line 13
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "sharePicUrl"

    .line 17
    .line 18
    move-object/from16 v7, p4

    .line 19
    .line 20
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "smsReceiverPhone"

    .line 24
    .line 25
    move-object/from16 v9, p5

    .line 26
    .line 27
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    sget-object v1, Lefa;->a:Lefa;

    .line 33
    .line 34
    new-instance v13, Lteam/opay/pay/oshare/api/OShareData;

    .line 35
    .line 36
    const/16 v10, 0x2a

    .line 37
    .line 38
    const/4 v11, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v8, 0x0

    .line 42
    move-object v2, v13

    .line 43
    move-object/from16 v3, p2

    .line 44
    .line 45
    move-object/from16 v5, p3

    .line 46
    .line 47
    move-object/from16 v7, p4

    .line 48
    .line 49
    move-object/from16 v9, p5

    .line 50
    .line 51
    invoke-direct/range {v2 .. v11}, Lteam/opay/pay/oshare/api/OShareData;-><init>(Lteam/opay/pay/oshare/api/OSharePlatform;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    .line 53
    .line 54
    const/4 v6, 0x4

    .line 55
    const/4 v7, 0x0

    .line 56
    const/4 v5, 0x0

    .line 57
    move-object v2, v1

    .line 58
    move-object v3, p1

    .line 59
    move-object v4, v13

    .line 60
    invoke-static/range {v2 .. v7}, Lefa;->b(Lefa;Landroid/content/Context;Lteam/opay/pay/oshare/api/OShareData;Lteam/opay/pay/oshare/adapter/ShareResultAdapter;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    const/4 v1, 0x1

    .line 64
    iput-boolean v1, v0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->K:Z

    .line 65
    .line 66
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iput-object v1, v0, Lteam/opay/pay/cashier/result/ShareDialogFragment;->L:Ljava/lang/String;

    .line 71
    .line 72
    return-void
.end method

.method public final w0()Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Lteam/opay/core/settings/NoClearStorage;

    .line 6
    .line 7
    sget-object v3, Lteam/opay/pay/envconfigapi/ConfigStorage;->f:Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;

    .line 8
    .line 9
    invoke-virtual {v3}, Lteam/opay/pay/envconfigapi/ConfigStorage$Companion;->a()Lteam/opay/pay/envconfigapi/ConfigStorage;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lteam/opay/pay/envconfigapi/ConfigStorage;->d()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-direct {v2, v3}, Lteam/opay/core/settings/NoClearStorage;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Lteam/opay/core/settings/NoClearStorage;->e0()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    sub-long/2addr v0, v2

    .line 25
    sget-object v2, Lteam/opay/pay/util/OpayIntValueConfig;->Companion:Lteam/opay/pay/util/OpayIntValueConfig$Companion;

    .line 26
    .line 27
    invoke-virtual {v2}, Lteam/opay/pay/util/OpayIntValueConfig$Companion;->a()Lteam/opay/pay/util/OpayIntValueConfig;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2}, Lteam/opay/pay/util/OpayIntValueConfig;->getValue()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const v2, 0x15180

    .line 39
    .line 40
    .line 41
    :goto_0
    mul-int/lit16 v2, v2, 0x3e8

    .line 42
    .line 43
    int-to-long v2, v2

    .line 44
    cmp-long v4, v0, v2

    .line 45
    .line 46
    if-lez v4, :cond_1

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 51
    :goto_1
    return v0
.end method
