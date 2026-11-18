.class final Lteam/opay/spos/printer/function/PrintRecordReport$pool$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PrintRecordReport.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/spos/printer/function/PrintRecordReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lteam/opay/spos/printer/utils/FixedMutableList<",
        "Lteam/opay/spos/printer/api/PosPrintExtendInfo;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lteam/opay/spos/printer/utils/FixedMutableList;",
        "Lteam/opay/spos/printer/api/PosPrintExtendInfo;",
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
.field public static final INSTANCE:Lteam/opay/spos/printer/function/PrintRecordReport$pool$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/spos/printer/function/PrintRecordReport$pool$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/spos/printer/function/PrintRecordReport$pool$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/spos/printer/function/PrintRecordReport$pool$2;->INSTANCE:Lteam/opay/spos/printer/function/PrintRecordReport$pool$2;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lteam/opay/spos/printer/function/PrintRecordReport$pool$2;->invoke()Lteam/opay/spos/printer/utils/FixedMutableList;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lteam/opay/spos/printer/utils/FixedMutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lteam/opay/spos/printer/utils/FixedMutableList<",
            "Lteam/opay/spos/printer/api/PosPrintExtendInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lteam/opay/spos/printer/utils/FixedMutableList;

    sget-object v1, Lteam/opay/spos/printer/internal/PrinterStorge;->a:Lteam/opay/spos/printer/internal/PrinterStorge;

    invoke-virtual {v1}, Lteam/opay/spos/printer/internal/PrinterStorge;->e()Ljava/util/List;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-direct {v0, v2, v1}, Lteam/opay/spos/printer/utils/FixedMutableList;-><init>(ILjava/util/List;)V

    return-object v0
.end method
