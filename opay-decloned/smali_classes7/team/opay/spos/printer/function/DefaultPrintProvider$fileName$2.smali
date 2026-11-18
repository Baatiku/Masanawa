.class final Lteam/opay/spos/printer/function/DefaultPrintProvider$fileName$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultPrintProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/spos/printer/function/DefaultPrintProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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
    iput-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$fileName$2;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

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
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider$fileName$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$fileName$2;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "fileName"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$fileName$2;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-static {v0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->access$getImgUrl(Lteam/opay/spos/printer/function/DefaultPrintProvider;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$fileName$2;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-static {v1}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->access$getImgUrl(Lteam/opay/spos/printer/function/DefaultPrintProvider;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, "/"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->x0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$fileName$2;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-static {v2}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->access$getImgUrl(Lteam/opay/spos/printer/function/DefaultPrintProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method
