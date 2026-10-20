.class Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;
.super Lteam/opay/pay/transaction/HistoryFilter$FilterItem;
.source "HistoryFilter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/pay/transaction/HistoryFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryFilterItem"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0012\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\u000b\u0010\rR\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000e\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;",
        "Lteam/opay/pay/transaction/HistoryFilter$FilterItem;",
        "Lteam/opay/pay/transaction/FilterTypeInfo;",
        "label",
        "Lkotlin/Function0;",
        "",
        "listener",
        "",
        "selected",
        "<init>",
        "(Lteam/opay/pay/transaction/FilterTypeInfo;Lkotlin/jvm/functions/Function0;Z)V",
        "c",
        "Lteam/opay/pay/transaction/FilterTypeInfo;",
        "()Lteam/opay/pay/transaction/FilterTypeInfo;",
        "d",
        "Z",
        "()Z",
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
.field public final c:Lteam/opay/pay/transaction/FilterTypeInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Z


# direct methods
.method public constructor <init>(Lteam/opay/pay/transaction/FilterTypeInfo;Lkotlin/jvm/functions/Function0;Z)V
    .locals 1
    .param p1    # Lteam/opay/pay/transaction/FilterTypeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lteam/opay/pay/transaction/FilterTypeInfo;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string v0, "label"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget v0, Lteam/opay/pay/R$layout;->category_filters_item:I

    .line 12
    .line 13
    invoke-direct {p0, p2, v0}, Lteam/opay/pay/transaction/HistoryFilter$FilterItem;-><init>(Lkotlin/jvm/functions/Function0;I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;->c:Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 17
    .line 18
    iput-boolean p3, p0, Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;->d:Z

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final c()Lteam/opay/pay/transaction/FilterTypeInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;->c:Lteam/opay/pay/transaction/FilterTypeInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lteam/opay/pay/transaction/HistoryFilter$CategoryFilterItem;->d:Z

    .line 2
    .line 3
    return v0
.end method
