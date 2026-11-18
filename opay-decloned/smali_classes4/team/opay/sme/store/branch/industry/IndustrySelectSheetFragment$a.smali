.class public final Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment$a;
.super Ljava/lang/Object;
.source "IndustrySelectSheetFragment.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "team/opay/sme/store/branch/industry/IndustrySelectSheetFragment$a",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "",
        "onGlobalLayout",
        "()V",
        "business-sme-store_release"
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
.field public final synthetic a:Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment;


# direct methods
.method public constructor <init>(Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment$a;->a:Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment$a;->a:Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment;->Z(Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment;)Lwud;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lwud;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment$a;->a:Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment;

    .line 17
    .line 18
    invoke-static {v0}, Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment;->c0(Lteam/opay/sme/store/branch/industry/IndustrySelectSheetFragment;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
