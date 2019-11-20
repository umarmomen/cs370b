class ProfilesController < ApplicationController
    # index, show, new, edit, create, update, destory
    
    # profile, GET, /profiles(.:format), profiles#index
    def index
        @profiles = Profile.all
    end

    # profile, GET, /profiles/:id(.:format), profiles#show
    def show
        @profile = Profile.find(params[:id])
    end

    # new_profile, GET, /profiles/new(.:format), profiles#new
    def new
        @profile = Profile.new
    end

    # edit_profile, GET, /profiles/:id/edit(.:format), profiles#edit
    def edit
        @profile = Profile.find(params[:id])
    end

    # profile, POST, /profiles(.:format), profiles#create
    def create
        @profile = Profile.new(profile_params)

        if @profile.save
            redirect_to @profile
        else
            render 'new'
        end
    end

    # profile, PATCH, /profiles/:id(.:format), profiles#update
    def update
        @profile = Profile.find(params[:id])

        if @profile.update(profile_params)
            redirect_to @profile
        else
            render 'edit'
        end
    end

    # profile, DELETE, /profiles/:id(.:format), profiles#destroy
    def destroy
        @profile = Profile.find(params[:id])
        @profile.destroy

        redirect_to profiles_path
    end

    private
        def profile_params
            params.require(:profile).permit(:name, :email, :year,
            :major, :philosophy, :courses, :about)
        end

end
