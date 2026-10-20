.class Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;
.super Lteam/opay/pay/transaction/HistoryFilter$FilterItem;
.source "HistoryFilter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/transaction/HistoryFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomPeriodFilterItem"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008\u0012\u0018\u00002\u00020\u0001BK\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u001d\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R$\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010\u0008\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0013\u001a\u0004\u0008\u000e\u0010\u0015\"\u0004\u0008\u0018\u0010\u0017R\u0017\u0010\n\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u0017\u0010\u000b\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0019\u001a\u0004\u0008\u0012\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;",
        "Lteam/opay/pay/transaction/HistoryFilter$FilterItem;",
        "Lkotlin/Function0;",
        "",
        "resetButtonListener",
        "filterButtonListener",
        "Ljava/util/Date;",
        "startDate",
        "endDate",
        "Landroid/app/DatePickerDialog$OnDateSetListener;",
        "startDateListener",
        "endDateListener",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/Date;Ljava/util/Date;Landroid/app/DatePickerDialog$OnDateSetListener;Landroid/app/DatePickerDialog$OnDateSetListener;)V",
        "c",
        "Lkotlin/jvm/functions/Function0;",
        "e",
        "()Lkotlin/jvm/functions/Function0;",
        "d",
        "Ljava/util/Date;",
        "f",
        "()Ljava/util/Date;",
        "setStartDate",
        "(Ljava/util/Date;)V",
        "setEndDate",
        "Landroid/app/DatePickerDialog$OnDateSetListener;",
        "g",
        "()Landroid/app/DatePickerDialog$OnDateSetListener;",
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


# instance fields
.field public final c:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Ljava/util/Date;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final f:Landroid/app/DatePickerDialog$OnDateSetListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Landroid/app/DatePickerDialog$OnDateSetListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/Date;Ljava/util/Date;Landroid/app/DatePickerDialog$OnDateSetListener;Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/app/DatePickerDialog$OnDateSetListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/app/DatePickerDialog$OnDateSetListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Landroid/app/DatePickerDialog$OnDateSetListener;",
            "Landroid/app/DatePickerDialog$OnDateSetListener;",
            ")V"
        }
    .end annotation

    const-string v0, "resetButtonListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterButtonListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startDateListener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endDateListener"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v0, Lteam/opay/pay/R$layout;->wallet_filter_custom_date_panel:I

    invoke-direct {p0, p1, v0}, Lteam/opay/pay/transaction/HistoryFilter$FilterItem;-><init>(Lkotlin/jvm/functions/Function0;I)V

    .line 3
    iput-object p2, p0, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;->c:Lkotlin/jvm/functions/Function0;

    .line 4
    iput-object p3, p0, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;->d:Ljava/util/Date;

    .line 5
    iput-object p4, p0, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;->e:Ljava/util/Date;

    .line 6
    iput-object p5, p0, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;->f:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 7
    iput-object p6, p0, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;->g:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/Date;Ljava/util/Date;Landroid/app/DatePickerDialog$OnDateSetListener;Landroid/app/DatePickerDialog$OnDateSetListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p5

    move-object v8, p6

    .line 1
    invoke-direct/range {v2 .. v8}, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/Date;Ljava/util/Date;Landroid/app/DatePickerDialog$OnDateSetListener;Landroid/app/DatePickerDialog$OnDateSetListener;)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;->e:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;->g:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;->c:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Ljava/util/Date;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;->d:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/HistoryFilter$CustomPeriodFilterItem;->f:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 2
    .line 3
    return-object v0
.end method
