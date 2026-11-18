.class public final Lteam/opay/pay/transaction/PeriodFilterBottomSheet$Companion;
.super Ljava/lang/Object;
.source "PeriodFilterBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/transaction/PeriodFilterBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lteam/opay/pay/transaction/PeriodFilterBottomSheet$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/pay/transaction/HistoryFilter$Period;",
        "period",
        "Lteam/opay/pay/transaction/PeriodFilterBottomSheet;",
        "a",
        "(Lteam/opay/pay/transaction/HistoryFilter$Period;)Lteam/opay/pay/transaction/PeriodFilterBottomSheet;",
        "",
        "KEY_SELECT_PERIOD",
        "Ljava/lang/String;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/pay/transaction/PeriodFilterBottomSheet$Companion;-><init>()V

    return-void
.end method

.method public static synthetic b(Lteam/opay/pay/transaction/PeriodFilterBottomSheet$Companion;Lteam/opay/pay/transaction/HistoryFilter$Period;ILjava/lang/Object;)Lteam/opay/pay/transaction/PeriodFilterBottomSheet;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lteam/opay/pay/transaction/PeriodFilterBottomSheet$Companion;->a(Lteam/opay/pay/transaction/HistoryFilter$Period;)Lteam/opay/pay/transaction/PeriodFilterBottomSheet;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final a(Lteam/opay/pay/transaction/HistoryFilter$Period;)Lteam/opay/pay/transaction/PeriodFilterBottomSheet;
    .locals 3
    .param p1    # Lteam/opay/pay/transaction/HistoryFilter$Period;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/pay/transaction/PeriodFilterBottomSheet;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/pay/transaction/PeriodFilterBottomSheet;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "select_period_key"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
