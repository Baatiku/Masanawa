.class public Lteam/opay/business/guideview/c;
.super Ljava/lang/Object;
.source "Guide.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public a:F

.field public b:Lteam/opay/business/guideview/Configuration;

.field public c:Lteam/opay/business/guideview/MaskView;

.field public d:[Lteam/opay/business/guideview/b;

.field public e:Z

.field public f:Lteam/opay/business/guideview/GuideBuilder$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput v0, p0, Lteam/opay/business/guideview/c;->a:F

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lteam/opay/business/guideview/c;->e:Z

    .line 10
    .line 11
    return-void
.end method

.method public static bridge synthetic a(Lteam/opay/business/guideview/c;)Lteam/opay/business/guideview/MaskView;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/guideview/c;->c:Lteam/opay/business/guideview/MaskView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic b(Lteam/opay/business/guideview/c;)Lteam/opay/business/guideview/GuideBuilder$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lteam/opay/business/guideview/c;->f:Lteam/opay/business/guideview/GuideBuilder$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic c(Lteam/opay/business/guideview/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lteam/opay/business/guideview/c;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/business/guideview/c;->c:Lteam/opay/business/guideview/MaskView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v1, p0, Lteam/opay/business/guideview/c;->c:Lteam/opay/business/guideview/MaskView;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/business/guideview/c;->g()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lteam/opay/business/guideview/c;->c:Lteam/opay/business/guideview/MaskView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/ViewGroup;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v1, p0, Lteam/opay/business/guideview/c;->b:Lteam/opay/business/guideview/Configuration;

    .line 16
    .line 17
    iget v1, v1, Lteam/opay/business/guideview/Configuration;->mExitAnimationId:I

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    if-eq v1, v2, :cond_2

    .line 21
    .line 22
    iget-object v1, p0, Lteam/opay/business/guideview/c;->c:Lteam/opay/business/guideview/MaskView;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lteam/opay/business/guideview/c;->b:Lteam/opay/business/guideview/Configuration;

    .line 29
    .line 30
    iget v2, v2, Lteam/opay/business/guideview/Configuration;->mExitAnimationId:I

    .line 31
    .line 32
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Lteam/opay/business/guideview/c$b;

    .line 37
    .line 38
    invoke-direct {v2, p0, v0}, Lteam/opay/business/guideview/c$b;-><init>(Lteam/opay/business/guideview/c;Landroid/view/ViewGroup;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lteam/opay/business/guideview/c;->c:Lteam/opay/business/guideview/MaskView;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object v1, p0, Lteam/opay/business/guideview/c;->c:Lteam/opay/business/guideview/MaskView;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lteam/opay/business/guideview/c;->f:Lteam/opay/business/guideview/GuideBuilder$b;

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    invoke-interface {v0}, Lteam/opay/business/guideview/GuideBuilder$b;->onDismiss()V

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-virtual {p0}, Lteam/opay/business/guideview/c;->g()V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method

.method public final f(Landroid/app/Activity;Landroid/view/ViewGroup;)Lteam/opay/business/guideview/MaskView;
    .locals 5

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    check-cast p2, Landroid/view/ViewGroup;

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lteam/opay/business/guideview/MaskView;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lteam/opay/business/guideview/MaskView;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lteam/opay/business/guideview/c;->b:Lteam/opay/business/guideview/Configuration;

    .line 23
    .line 24
    iget v2, v2, Lteam/opay/business/guideview/Configuration;->mFullingColorId:I

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Lteam/opay/business/guideview/MaskView;->f(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lteam/opay/business/guideview/c;->b:Lteam/opay/business/guideview/Configuration;

    .line 34
    .line 35
    iget v1, v1, Lteam/opay/business/guideview/Configuration;->mAlpha:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lteam/opay/business/guideview/MaskView;->e(I)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lteam/opay/business/guideview/c;->b:Lteam/opay/business/guideview/Configuration;

    .line 41
    .line 42
    iget v1, v1, Lteam/opay/business/guideview/Configuration;->mCorner:I

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lteam/opay/business/guideview/MaskView;->g(I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lteam/opay/business/guideview/c;->b:Lteam/opay/business/guideview/Configuration;

    .line 48
    .line 49
    iget v1, v1, Lteam/opay/business/guideview/Configuration;->mPadding:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lteam/opay/business/guideview/MaskView;->j(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lteam/opay/business/guideview/c;->b:Lteam/opay/business/guideview/Configuration;

    .line 55
    .line 56
    iget v1, v1, Lteam/opay/business/guideview/Configuration;->mPaddingLeft:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lteam/opay/business/guideview/MaskView;->l(I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lteam/opay/business/guideview/c;->b:Lteam/opay/business/guideview/Configuration;

    .line 62
    .line 63
    iget v1, v1, Lteam/opay/business/guideview/Configuration;->mPaddingTop:I

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lteam/opay/business/guideview/MaskView;->n(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lteam/opay/business/guideview/c;->b:Lteam/opay/business/guideview/Configuration;

    .line 69
    .line 70
    iget v1, v1, Lteam/opay/business/guideview/Configuration;->mPaddingRight:I

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lteam/opay/business/guideview/MaskView;->m(I)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lteam/opay/business/guideview/c;->b:Lteam/opay/business/guideview/Configuration;

    .line 76
    .line 77
    iget v1, v1, Lteam/opay/business/guideview/Configuration;->mPaddingBottom:I

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lteam/opay/business/guideview/MaskView;->k(I)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lteam/opay/business/guideview/c;->b:Lteam/opay/business/guideview/Configuration;

    .line 83
    .line 84
    iget v1, v1, Lteam/opay/business/guideview/Configuration;->mGraphStyle:I

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lteam/opay/business/guideview/MaskView;->h(I)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lteam/opay/business/guideview/c;->b:Lteam/opay/business/guideview/Configuration;

    .line 90
    .line 91
    iget-boolean v1, v1, Lteam/opay/business/guideview/Configuration;->mOverlayTarget:Z

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lteam/opay/business/guideview/MaskView;->i(Z)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 97
    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    if-eqz p2, :cond_1

    .line 101
    .line 102
    const/4 v2, 0x2

    .line 103
    new-array v2, v2, [I

    .line 104
    .line 105
    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 106
    .line 107
    .line 108
    aget p2, v2, v1

    .line 109
    .line 110
    const/4 v3, 0x1

    .line 111
    aget v2, v2, v3

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    const/4 p2, 0x0

    .line 115
    const/4 v2, 0x0

    .line 116
    :goto_0
    iget-object v3, p0, Lteam/opay/business/guideview/c;->b:Lteam/opay/business/guideview/Configuration;

    .line 117
    .line 118
    iget-object v4, v3, Lteam/opay/business/guideview/Configuration;->mTargetView:Landroid/view/View;

    .line 119
    .line 120
    if-eqz v4, :cond_2

    .line 121
    .line 122
    invoke-static {v4, p2, v2}, Lteam/opay/business/guideview/a;->b(Landroid/view/View;II)Landroid/graphics/Rect;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {v0, p2}, Lteam/opay/business/guideview/MaskView;->o(Landroid/graphics/Rect;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_2
    iget v3, v3, Lteam/opay/business/guideview/Configuration;->mTargetViewId:I

    .line 131
    .line 132
    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    if-eqz v3, :cond_3

    .line 137
    .line 138
    invoke-static {v3, p2, v2}, Lteam/opay/business/guideview/a;->b(Landroid/view/View;II)Landroid/graphics/Rect;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-virtual {v0, p2}, Lteam/opay/business/guideview/MaskView;->o(Landroid/graphics/Rect;)V

    .line 143
    .line 144
    .line 145
    :cond_3
    :goto_1
    iget-object p2, p0, Lteam/opay/business/guideview/c;->b:Lteam/opay/business/guideview/Configuration;

    .line 146
    .line 147
    iget-boolean p2, p2, Lteam/opay/business/guideview/Configuration;->mOutsideTouchable:Z

    .line 148
    .line 149
    if-eqz p2, :cond_4

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_4
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    .line 157
    .line 158
    :goto_2
    iget-object p2, p0, Lteam/opay/business/guideview/c;->d:[Lteam/opay/business/guideview/b;

    .line 159
    .line 160
    array-length v2, p2

    .line 161
    :goto_3
    if-ge v1, v2, :cond_5

    .line 162
    .line 163
    aget-object v3, p2, v1

    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-static {v4, v3}, Lteam/opay/business/guideview/a;->a(Landroid/view/LayoutInflater;Lteam/opay/business/guideview/b;)Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 174
    .line 175
    .line 176
    add-int/lit8 v1, v1, 0x1

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_5
    return-object v0
.end method

.method public final g()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lteam/opay/business/guideview/c;->b:Lteam/opay/business/guideview/Configuration;

    .line 3
    .line 4
    iput-object v0, p0, Lteam/opay/business/guideview/c;->d:[Lteam/opay/business/guideview/b;

    .line 5
    .line 6
    iput-object v0, p0, Lteam/opay/business/guideview/c;->f:Lteam/opay/business/guideview/GuideBuilder$b;

    .line 7
    .line 8
    iget-object v1, p0, Lteam/opay/business/guideview/c;->c:Lteam/opay/business/guideview/MaskView;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lteam/opay/business/guideview/c;->c:Lteam/opay/business/guideview/MaskView;

    .line 14
    .line 15
    return-void
.end method

.method public h(Lteam/opay/business/guideview/GuideBuilder$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/guideview/c;->f:Lteam/opay/business/guideview/GuideBuilder$b;

    .line 2
    .line 3
    return-void
.end method

.method public i([Lteam/opay/business/guideview/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/guideview/c;->d:[Lteam/opay/business/guideview/b;

    .line 2
    .line 3
    return-void
.end method

.method public j(Lteam/opay/business/guideview/Configuration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lteam/opay/business/guideview/c;->b:Lteam/opay/business/guideview/Configuration;

    .line 2
    .line 3
    return-void
.end method

.method public k(Lteam/opay/business/guideview/GuideBuilder$a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public l(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lteam/opay/business/guideview/c;->m(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public m(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/guideview/c;->f(Landroid/app/Activity;Landroid/view/ViewGroup;)Lteam/opay/business/guideview/MaskView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lteam/opay/business/guideview/c;->c:Lteam/opay/business/guideview/MaskView;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Landroid/view/ViewGroup;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lteam/opay/business/guideview/c;->c:Lteam/opay/business/guideview/MaskView;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lteam/opay/business/guideview/c;->b:Lteam/opay/business/guideview/Configuration;

    .line 28
    .line 29
    iget-object v0, v0, Lteam/opay/business/guideview/Configuration;->mTargetView:Landroid/view/View;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lteam/opay/business/guideview/c;->c:Lteam/opay/business/guideview/MaskView;

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lteam/opay/business/guideview/c;->b:Lteam/opay/business/guideview/Configuration;

    .line 39
    .line 40
    iget p2, p2, Lteam/opay/business/guideview/Configuration;->mEnterAnimationId:I

    .line 41
    .line 42
    const/4 v0, -0x1

    .line 43
    if-eq p2, v0, :cond_1

    .line 44
    .line 45
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance p2, Lteam/opay/business/guideview/c$a;

    .line 50
    .line 51
    invoke-direct {p2, p0}, Lteam/opay/business/guideview/c$a;-><init>(Lteam/opay/business/guideview/c;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lteam/opay/business/guideview/c;->c:Lteam/opay/business/guideview/MaskView;

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lteam/opay/business/guideview/c;->f:Lteam/opay/business/guideview/GuideBuilder$b;

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    invoke-interface {p1}, Lteam/opay/business/guideview/GuideBuilder$b;->onShown()V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 p1, 0x4

    .line 2
    const/4 v0, 0x0

    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 p2, 0x1

    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lteam/opay/business/guideview/c;->b:Lteam/opay/business/guideview/Configuration;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-boolean p1, p1, Lteam/opay/business/guideview/Configuration;->mAutoDismiss:Z

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lteam/opay/business/guideview/c;->e()V

    .line 21
    .line 22
    .line 23
    return p2

    .line 24
    :cond_0
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lteam/opay/business/guideview/c;->a:F

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, v1, :cond_2

    .line 20
    .line 21
    iget v0, p0, Lteam/opay/business/guideview/c;->a:F

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    sub-float/2addr v0, v2

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/high16 v3, 0x41f00000    # 30.0f

    .line 33
    .line 34
    invoke-static {v2, v3}, Lteam/opay/business/guideview/DimenUtil;->a(Landroid/content/Context;F)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    int-to-float v2, v2

    .line 39
    cmpl-float v0, v0, v2

    .line 40
    .line 41
    if-lez v0, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1, v3}, Lteam/opay/business/guideview/DimenUtil;->a(Landroid/content/Context;F)I

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object p1, p0, Lteam/opay/business/guideview/c;->b:Lteam/opay/business/guideview/Configuration;

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    iget-boolean p1, p1, Lteam/opay/business/guideview/Configuration;->mAutoDismiss:Z

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Lteam/opay/business/guideview/c;->e()V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_1
    return v1
.end method
