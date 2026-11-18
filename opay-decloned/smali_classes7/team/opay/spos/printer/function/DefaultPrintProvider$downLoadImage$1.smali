.class final Lteam/opay/spos/printer/function/DefaultPrintProvider$downLoadImage$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultPrintProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/spos/printer/function/DefaultPrintProvider;->downLoadImage(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "isDownLoadSuccess",
        "",
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
.field final synthetic this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;


# direct methods
.method public constructor <init>(Lteam/opay/spos/printer/function/DefaultPrintProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$downLoadImage$1;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lteam/opay/spos/printer/function/DefaultPrintProvider$downLoadImage$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$downLoadImage$1;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-static {v0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->access$getBinding(Lteam/opay/spos/printer/function/DefaultPrintProvider;)Lnyb;

    move-result-object v0

    iget-object v0, v0, Lnyb;->c:Lteam/opay/core/widget/HttpViewGroup;

    const-string v1, "binding.httpViewGroup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lg0g;->d(Landroid/view/View;)V

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$downLoadImage$1;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-static {p1}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->access$checkImageData(Lteam/opay/spos/printer/function/DefaultPrintProvider;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$downLoadImage$1;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-static {p1}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->access$doPrint(Lteam/opay/spos/printer/function/DefaultPrintProvider;)V

    :goto_0
    return-void
.end method
