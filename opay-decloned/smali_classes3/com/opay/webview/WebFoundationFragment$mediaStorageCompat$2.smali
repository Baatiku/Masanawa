.class final Lcom/opay/webview/WebFoundationFragment$mediaStorageCompat$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WebFoundationFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opay/webview/WebFoundationFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;",
        "T",
        "Lcom/opay/webview/WebFoundationData;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/opay/webview/WebFoundationFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/opay/webview/WebFoundationFragment<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/opay/webview/WebFoundationFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/opay/webview/WebFoundationFragment<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/opay/webview/WebFoundationFragment$mediaStorageCompat$2;->this$0:Lcom/opay/webview/WebFoundationFragment;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;

    .line 3
    iget-object v1, p0, Lcom/opay/webview/WebFoundationFragment$mediaStorageCompat$2;->this$0:Lcom/opay/webview/WebFoundationFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/opay/webview/WebFoundationFragment$mediaStorageCompat$2;->this$0:Lcom/opay/webview/WebFoundationFragment;

    .line 4
    invoke-direct {v0, v1, v2}, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/opay/webview/WebFoundationFragment$mediaStorageCompat$2;->invoke()Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;

    move-result-object v0

    return-object v0
.end method
