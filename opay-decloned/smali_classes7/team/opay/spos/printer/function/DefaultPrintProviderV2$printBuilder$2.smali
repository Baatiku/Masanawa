.class final Lteam/opay/spos/printer/function/DefaultPrintProviderV2$printBuilder$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultPrintProviderV2.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/spos/printer/function/DefaultPrintProviderV2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lteam/opay/spos/printer/OPayTicketComposer$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lteam/opay/spos/printer/OPayTicketComposer$Builder;",
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
.field final synthetic this$0:Lteam/opay/spos/printer/function/DefaultPrintProviderV2;


# direct methods
.method public constructor <init>(Lteam/opay/spos/printer/function/DefaultPrintProviderV2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$printBuilder$2;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProviderV2;

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
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$printBuilder$2;->invoke()Lteam/opay/spos/printer/OPayTicketComposer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lteam/opay/spos/printer/OPayTicketComposer$Builder;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lteam/opay/spos/printer/OPayTicketComposer$Builder;

    iget-object v1, p0, Lteam/opay/spos/printer/function/DefaultPrintProviderV2$printBuilder$2;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProviderV2;

    invoke-virtual {v1}, Lteam/opay/opb/common/base/EdgeFragment;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lteam/opay/spos/printer/OPayTicketComposer$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
