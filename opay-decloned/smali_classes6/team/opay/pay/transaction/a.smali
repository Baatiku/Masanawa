.class public final synthetic Lteam/opay/pay/transaction/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;


# direct methods
.method public synthetic constructor <init>(Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lteam/opay/pay/transaction/a;->a:Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/transaction/a;->a:Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lteam/opay/pay/transaction/HistoryFilter$FilterViewHolder;->d(Lteam/opay/pay/transaction/HistoryFilter$StatusFilterItem;Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
