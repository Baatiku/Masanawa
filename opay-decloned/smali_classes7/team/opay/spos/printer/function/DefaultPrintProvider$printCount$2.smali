.class final Lteam/opay/spos/printer/function/DefaultPrintProvider$printCount$2;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Integer;"
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
    iput-object p1, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$printCount$2;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

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
.method public final invoke()Ljava/lang/Integer;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$printCount$2;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-static {v0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->access$getPrintInfo(Lteam/opay/spos/printer/function/DefaultPrintProvider;)Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getOrderStatus()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "this as java.lang.String).toUpperCase(locale)"

    const-string v7, "getDefault()"

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    const-string v8, "SUCCESS"

    invoke-static {v2, v8, v4, v3, v5}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getOrderStatus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    const-string v8, "APPROVED"

    invoke-static {v2, v8, v4, v3, v5}, Lkotlin/text/StringsKt;->d0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->getOrderStatus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    const-string v2, "ACCEPT"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    :goto_0
    invoke-virtual {v0}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->isSupportSecond()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    sget-object v0, Lteam/opay/spos/printer/internal/PrinterStorge;->a:Lteam/opay/spos/printer/internal/PrinterStorge;

    invoke-virtual {v0}, Lteam/opay/spos/printer/internal/PrinterStorge;->f()I

    move-result v1

    .line 8
    :cond_3
    iget-object v0, p0, Lteam/opay/spos/printer/function/DefaultPrintProvider$printCount$2;->this$0:Lteam/opay/spos/printer/function/DefaultPrintProvider;

    invoke-static {v0}, Lteam/opay/spos/printer/function/DefaultPrintProvider;->access$getPrintInfo(Lteam/opay/spos/printer/function/DefaultPrintProvider;)Lteam/opay/spos/printer/api/PosPrintExtendInfo;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lteam/opay/spos/printer/api/PosPrintExtendInfo;->setPrintCount(Ljava/lang/String;)V

    .line 9
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/DefaultPrintProvider$printCount$2;->invoke()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
