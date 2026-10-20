.class final Lteam/opay/spos/printer/function/PrintRecordReport$upload$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PrintRecordReport.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/spos/printer/function/PrintRecordReport$upload$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "isSuccess",
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


# static fields
.field public static final INSTANCE:Lteam/opay/spos/printer/function/PrintRecordReport$upload$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/spos/printer/function/PrintRecordReport$upload$1$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/spos/printer/function/PrintRecordReport$upload$1$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/spos/printer/function/PrintRecordReport$upload$1$1;->INSTANCE:Lteam/opay/spos/printer/function/PrintRecordReport$upload$1$1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lteam/opay/spos/printer/function/PrintRecordReport$upload$1$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lteam/opay/spos/printer/function/PrintRecordReport;->a:Lteam/opay/spos/printer/function/PrintRecordReport;

    invoke-static {p1}, Lteam/opay/spos/printer/function/PrintRecordReport;->a(Lteam/opay/spos/printer/function/PrintRecordReport;)Lteam/opay/spos/printer/utils/FixedMutableList;

    move-result-object p1

    invoke-virtual {p1}, Lteam/opay/spos/printer/utils/FixedMutableList;->clear()V

    :cond_0
    return-void
.end method
