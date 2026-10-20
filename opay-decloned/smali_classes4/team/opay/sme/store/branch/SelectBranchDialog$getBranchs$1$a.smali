.class public final Lteam/opay/sme/store/branch/SelectBranchDialog$getBranchs$1$a;
.super Ljava/lang/Object;
.source "SelectBranchDialog.kt"

# interfaces
.implements La66;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/branch/SelectBranchDialog$getBranchs$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La66;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lteam/opay/sme/store/branch/SelectBranchDialog;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/branch/SelectBranchDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/SelectBranchDialog$getBranchs$1$a;->a:Lteam/opay/sme/store/branch/SelectBranchDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Landroidx/paging/PagingData;Ljr2;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingData<",
            "Lteam/opay/sme/store/api/BranchInfo;",
            ">;",
            "Ljr2<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lteam/opay/sme/store/branch/SelectBranchDialog$getBranchs$1$a;->a:Lteam/opay/sme/store/branch/SelectBranchDialog;

    .line 2
    .line 3
    invoke-static {p2}, Lteam/opay/sme/store/branch/SelectBranchDialog;->Z(Lteam/opay/sme/store/branch/SelectBranchDialog;)Lteam/opay/sme/store/branch/SelectBranchDialog$SelectBranchAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/sme/store/branch/SelectBranchDialog$getBranchs$1$a;->a:Lteam/opay/sme/store/branch/SelectBranchDialog;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "<get-lifecycle>(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0, p1}, Landroidx/paging/PagingDataAdapter;->s(Landroidx/lifecycle/Lifecycle;Landroidx/paging/PagingData;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ljr2;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/paging/PagingData;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lteam/opay/sme/store/branch/SelectBranchDialog$getBranchs$1$a;->c(Landroidx/paging/PagingData;Ljr2;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
